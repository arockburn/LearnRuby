#!/usr/bin/ruby -w

@max = 1000
@i = 0
@sum = 0

while @i < @max do
	if @i % 3 == 0 || @i % 5 == 0
		@sum += @i
	end
	@i += 1
end

puts @sum		
