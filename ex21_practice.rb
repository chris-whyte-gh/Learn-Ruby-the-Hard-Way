#Ruby implicitly returns the last expression calculated
#The function, multiply, will be called. The function will end, and the value will be implicitly returned to the function caller.
def multiply(a, b)
    puts "Multiplying #{a} * #{b}"
    return a * b
end

def add(a, b)
    puts "adding #{a} + #{b}"
    return a + b
end

def subtract(a, b)
    puts "subtracting #{a} - #{b}"
    return a - b 
end

def divide(a, b)
    puts "dividing #{a} - #{b}"
    return a / b 
end

def remainder(a, b)
    puts "the remainder of divding #{a} and #{b}"
    return a % b 
end

def complicated(a, b, c, d, e, f)
    return a + (b / c * (d - e)) + f 
end

puts "Give me some numbers to run formulas:"

a = gets.chomp.to_i
b = gets.chomp.to_i
#c = gets.chomp.to_i
#d = gets.chomp.to_i
#e = gets.chomp.to_i
#f = gets.chomp.to_i

Multiply = multiply(a, b)
puts "Here is multiply"
puts Multiply
#puts "And here is the complicated answer:"
#puts complicated(a, b, c, d, e, f)
puts "And here is the remainder"
left_over = remainder(a, b)
puts left_over
puts "And here is us adding left_over by multiply"
puts add(left_over, Multiply)
puts "Something really complicated"
what = add(a, subtract(Multiply, divide(left_over, 1)))
puts "#{what}"
