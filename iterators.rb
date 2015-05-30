def three_times
	puts "Ready"
	yield
	yield
	puts "After yield"
end

#yield passes control to the block below
three_times { |number| puts number}