#ARGV is an argument variable. It holds arguments passed to ruby when it is run. In "Ruby argument.rb" argument.rb is the argument

#Takes what is in ARGV, unpacks it, and assigns it to the three variables
first, second, third, fourth = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

#If I give it two variables, what becomes of the third variable? Run the script with two arguments, nil will equal 'true'
puts "What happens with the third variable? #{third.nil?}"

#To run the ruby command, pass it arguments so it looks like
#ruby argument.rb first 2nd 3rd

itemA, itemB, itemC = ARGV
#Reassigns arguments into these variables. The arguments are only passed once, and ARGV holds them, then unpacks them again, assigning them to three variables.
puts "What the hell is #{itemA} on"
puts "Do I need a #{itemB}"
puts "This is the third variable #{itemC}"

#script with two arguments. Can submit string or numbers 
#Ruby argument.rb "This is a string" 34
top, bottom = ARGV
puts top
puts bottom

#Use get.chomp vs $stdin.gets.chomp. Gets first looks to see if there are any files in the arguments passed to ARGV. When it is passed an argument, it assumes that is a file but breaks if it can't find one. $Stdin is looking for standard input
Number_1, Number_2, Number_3 = ARGV
puts "What is the meaning of #{Number_1}?"
puts "How do you feel? #{Number_2.to_i}"
answer = $stdin.gets.chomp
#ARGV creates an array