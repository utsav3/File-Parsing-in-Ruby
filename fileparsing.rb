#!/usr/bin/env ruby
File.open("mydata1.txt","r") do |f|
lines = f.readlines
h={}
n=1

	lines.each_with_index do |line , i|
		process, name, time=line.match(/^(\d+) (.*) , (\d+\:\d+)$/).captures
		h[i+1]={process:process.to_i, name:name, time:time.to_f}
		
	end
	puts h[1]
	puts h[2]
	
end

