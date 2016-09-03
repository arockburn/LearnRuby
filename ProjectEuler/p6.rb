#!/usr/bin/ruby -w

max_num = 100
sum_of_squares = 0
square_of_sums = 0

#sum of squares
for i in 0..max_num
	sum_of_squares += i*i
end

#square of sums
for i in 0..max_num
	square_of_sums += i
end

square_of_sums *= square_of_sums
answer = square_of_sums - sum_of_squares
puts "Difference is: #{answer}"