#!/usr/bin/ruby -w

include Math

#Pythag trips
#a^2 + b^2 = c^2
#a < b < c
#a + b + c = 1000
#find product abc

class PythagTrips
	def find_c_squared(a, b)
		return a**2 + b**2
	end

	def find_c(a, b)
		return Math.sqrt(a**2 + b**2)
	end

	def add_legs(a, b, c)
		return a + b + c
	end
end


pythag = PythagTrips.new

_a = 3
_b = 4
_c = 5
trips_found = false

cnt = 0

while !trips_found && cnt < 10000000

	_c = pythag.find_c(_a, _b)

	if pythag.add_legs(_a, _b, _c) == 1000 && _a < _b && _b < _c
		trips_found = true
	end

	if !trips_found
		if pythag.add_legs(_a, _b, _c) > 1000
			_a += 1
			_b = _a + 1
		else
			_b += 1
		end
	end

	cnt += 1
end

if trips_found
	puts "Found the winning combo: a: #{_a}, b: #{_b}, c: #{_c}"
	puts "Product is #{_a * _b * _c}"
else
	puts "Attempt count reached, final values are:  a: #{_a}, b: #{_b}, c: #{_c}"
end