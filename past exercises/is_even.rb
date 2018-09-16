def is_even(number1, number2)
    puts "Is #{number1} an even number? #{number1 % 2 == 0}"
    puts "Is #{number2} an even number? #{number2 % 2 == 0}"
end

def is_odd(number1, number2)
    puts "Is #{number1} an odd number? #{number1 % 2 != 0}"
    puts "Is #{number2} an odd number? #{number2 % 2 != 0}"
end

number1 = 5
number2 = 10

is_even(number1, number2)
is_odd(number1, number2)

puts "Enter a number: "
first_number = gets.chomp.to_i
puts "Enter another number: "
second_number = gets.chomp.to_i

is_even(first_number, second_number)
is_odd(first_number, second_number)