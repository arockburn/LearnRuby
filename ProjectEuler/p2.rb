#!/usr/bin/ruby -w

fib_nums = Array.new()
curr_num = 0;

fib_nums.push(1, 2)
sum = 2

while curr_num < 4000000
	l = fib_nums.length
	curr_num = fib_nums[l-2] + fib_nums[l-1]
	if curr_num % 2 == 0
		sum += curr_num
	end

	fib_nums.push(curr_num)
end

fib_nums.each{ |a| puts a}

puts "Fibb number count: #{fib_nums.length}"
puts "Largest fibb value: #{curr_num}"
puts "Sum of even fibb numbers: #{sum}"