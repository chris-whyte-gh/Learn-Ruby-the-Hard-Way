def evenly_divisible(num1, num2)
    if num1 % num2 != 0
        puts "Nope! They are not!"
    else
        puts "Yes! They are evenly divisible"        
    end
end

puts "Are these numbers evenly divisble? "
evenly_divisible(3, 2)
evenly_divisible(4, 2)
evenly_divisible(5+2, 2)

puts "Now your turn! Give me two numbers."
print "Number 1: " 
num1 = gets.chomp.to_i
print "Number 2: " 
num2 = gets.chomp.to_i
evenly_divisible(num1, num2)
