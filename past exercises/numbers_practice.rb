print "Give me a number: "
number = gets.chomp.to_f

discount = number * 0.1
#uses round(2) method to round the float to two decimal places
puts "Your discount is #{discount.round(2)}"

