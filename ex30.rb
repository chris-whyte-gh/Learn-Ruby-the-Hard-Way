people = 30
cars = 40
trucks = 15

if cars > people
    puts "We should take the cars."
elsif cars < people
    puts "We should not take the cars."
else
    puts "We can't decide."
end

if trucks > cars
    puts "That's too many trucks."
elsif trucks < cars
    puts "Maybe we could take the trucks."
else
    puts "We still can't decide"
end

if people > trucks
    puts "Alright, let's just take the trucks."
else
    puts "Fine, let's stay home then."
end

if cars < people || trucks > cars
    puts "Either cars are greater than people, or trucks are less than cars"
else
    puts "nothing matters"
end

if cars < people && trucks > cars
    puts "Cars are less than people and trucks are greater than cars"
elsif
    cars > trucks && trucks > people
    puts "cars are > people AND trucks are < cars"
else
    puts "what's it all for"
end