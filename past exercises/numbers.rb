#prints and asks for response on same line. 
#converts response from string to integer 
print "Give me a number: "
number = gets.chomp.to_i

#takes number variable, multiplies it by 100, then uses interpolation in a string
bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
#saves what gets.chomp returns, and runs a floating point method on that
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

#print the number since it's value changed from the top of the code
print number