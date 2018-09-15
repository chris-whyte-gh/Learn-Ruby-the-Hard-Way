print "How old are you? "
age = gets.chomp

print "How tall are you? "
height = gets.chomp

print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall, and #{weight} heavy."

print "Are you learning ruby? "
ruby = gets.chomp.capitalize #get input, remove whitespace, and capitalize it

puts "And are you learning code? #{ruby}"