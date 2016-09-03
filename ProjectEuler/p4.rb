#!/usr/bin/ruby

#find the biggest palindrome product of all 3 digit numbers

biggest_palindrome = 0
palindrome_found = false

for i in 100..999
	for j in 100..999
		product = i * j

		p_string = product.to_s
		p_rev = product.to_s.reverse

		if p_string == p_rev && product > biggest_palindrome
			biggest_palindrome = product
		end

	end
end

puts biggest_palindrome