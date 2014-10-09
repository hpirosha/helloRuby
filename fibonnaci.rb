# ruby program to print fibonnaci series

puts("Enter #numbers to generate for fibonnaci series")

num = gets()

# seed values
fibn = 1
fibn1 = 1
fibn2 = 0


# Fn = Fn-1 + Fn-2
for i in (1..num.to_i) do
	puts(fibn)
	fibn = fibn1 + fibn2
	fibn2 = fibn1
	fibn1 = fibn
end
