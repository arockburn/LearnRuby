#!/usr/bin/ruby -w

require 'prime'

sum = 0
Prime.instance.each(2000000) do |p|
	sum += p
end

puts "Sum is #{sum}"