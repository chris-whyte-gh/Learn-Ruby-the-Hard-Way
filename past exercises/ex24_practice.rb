puts "Ok, to review exercise 24"
puts 'I\'ll be \'reviewing\' \t tabs and \n new lines and how to escape characters.'
#Escaped \n and \t don't work in single quotes because they are interpreted literally

my_style = <<END
\t My Lovely Poem
\t-----------------
Once, there was a rad dude
He was rad\nHe stayed rad
\tHe lived rad
*****************
His life was good
END

puts my_style

age = ((34 + 0) / 17) * 12 + 10

puts "This is how old I am #{age}"

def neat_trick(argument)
    dogs = argument * 2
    wives = dogs - 1
    lives = argument
    puts "You have this many #{dogs} dogs, this many #{wives} wives, and this many #{lives} lives"
end

neat_trick(3)

def neat_trick(argument)
    dogs = argument * 2
    wives = dogs - 1
    lives = argument
    return dogs, wives, lives
end

number = 100
a_variable, b, c = neat_trick(number)
puts "Started with #{number} and got this many \n dogs: #{a_variable}, \n wives: #{b},\n\tand \n lives: #{c}."

second_attempt = number / 50
#string formatter, ugh even more nonsense
#How to format string output: http://ruby-doc.org/core-2.3.1/Kernel.html#method-i-sprintf
puts "I guess we can just make shit up now, like doing %s, %d, and %e." % neat_trick(second_attempt)

def binary(number)
    return number    
end

number = binary(10)

puts "What does this number look like in binary: %b?" % binary(number)
