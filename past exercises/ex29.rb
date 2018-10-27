
people = 20
cats = 30
dogs = 15

if people < cats
    #evaluates the conditions of a statement
    puts "Too many cats! The world is doomed!"
    # the code needs to be indented to identify the output of the condition 
end

if people > cats
    puts "Not many cats! The world is saved!"
end

if people < dogs
    puts "The world is drooled on!"
end

if people > dogs
    puts "The world is dry!"
end

dogs += 5

if people >= dogs
    puts "People are greater than or equal to dogs."
end

if people <= dogs
    puts "People are less than or equal to dogs."
end

if people == dogs
    puts "People are dogs."
end

if dogs != cats
    puts "Dogs and cats are not equal, people."
end

if (people || cats) > dogs
    puts "People or cats are greater than dogs"
end

#this seems to depend on the parenthesis. With parenthesis, nothing will run. Without them, we print the statement
if (10 || 12) > 11
    puts "10 or 12 is greater than 11"
end