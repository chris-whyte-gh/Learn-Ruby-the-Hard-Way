#Define method, includes printing out strings and taking two arguments
def cheese_and_crackers(cheese_count, boxes_of_crackers)
    #prints first argument in a string
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    puts "Man that's enough for a party!"
    #Adds an escape character and prints a new line after printing string
    puts "Get a blanket.\n"
end

#Call the method directly with two arguments
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

#Set two variables, amount_of_cheese and amount_of_crackers and assign integer values
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

#call method using the two variables above as arguments
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

#calls method using passed computed values
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

#calls method using variables and passed in computed values
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

