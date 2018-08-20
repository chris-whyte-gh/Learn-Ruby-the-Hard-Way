#ARGV is an argument variable. It holds arguments passed to ruby when it is run. Such as "Ruby argument.rb" argument.rb is the the argument
#Takes what is in ARGV, unpacks it, and assigns it to the three variables
first, second, third, fourth = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

#To run the ruby command, pass it arguments so it looks like
#ruby argument.rb first 2nd 3rd

just, second, idea = ARGV
#Hmm, it seems like ARGV is only set once, and is not updated with new variables
puts "What the hell is #{first} on"
puts "Do I need a #{second}"
puts "This is the third variable #{idea}"