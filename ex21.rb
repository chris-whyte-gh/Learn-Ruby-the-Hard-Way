def add(a, b)
    puts "Adding #{a} + #{b}"
    #Sets variables to be a value of a function
    return a + b    
end

def subtract(a, b)
    puts "Subtracting #{a} - #{b}"
    return a - b
end

def multiply(a, b)
    puts "Multiplying #{a} * #{b}"
    return a * b    
end

def divide(a, b)
    puts "Dividing #{a} / #{b}"
    return a / b
end

puts "Let's do some math with just functions!"

#Function is called with two arguments and returned (both implicitly and explicitly to the caller, age.)
age = add(30, 5)
height =  subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

#Extra credit puzzle
puts "Here is a puzzle"

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
# age + (height - (weight * (iq/2)))
puts "That becomes #{what}. Can you do it by hand?"