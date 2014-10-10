# program to change case of a string

puts("Enter a string :")
str = gets()

str.each_char do |c|
	if( c.ord >= 65 && c.ord <= 90)
		print c.downcase
	elsif(c.ord >= 90 && c.ord <= 172)
		print c.upcase
	elsif 
		print c
	end

end

# just call the swapcase method instead
puts str.swapcase

