types_of_people =  10
#string interpolation of the 'types_of_people' variable
x = "There are #{types_of_people} types of people."
#more variables
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

#display/print variables set above. Without puts, they would not be displayed
#can comment out puts to test
puts x
puts y

=begin
Another instance of a string inside a string
Replaceing double quotes with single quotes breaks string interpolation
"Ruby interpolates values of expressions in #{variable} only in "double-quoted" strings:"
Otherwise, pretty much used interchangeably, just need to be escaped
=end
puts "I said: #{x}."
puts "I also said: '#{y}'."

#binary
hilarious = false

joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."
#concatenation
puts w + e
