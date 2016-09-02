#!/usr/bin/ruby -w

require 'prime'
include Math

max = 600851475143
sq_max = Math.sqrt(max).round
primes = Prime.each(sq_max)

curr_max = 2

primes.each do |p|
	if max % p == 0
		curr_max = p
	end
end

puts curr_max