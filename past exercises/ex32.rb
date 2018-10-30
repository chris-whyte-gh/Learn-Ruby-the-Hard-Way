=begin
eyes = ['brown', 'blue', 'green', 'hazel']
dogs = ['hazel', 'gulli', 'zoe', 'dusty']
cats = ['tiger']
weight = [1, 2, 3, 4]
=end

the_count = [1, 2, 3, 4, 5]
fruits = ['apples','oranges','pears','apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#for loop
for number in the_count
    puts "This is count #{number}"
end

the_count.each do |number|
    puts "This is count #{number}"
end

the_count.each {|number| puts "This is count #{number}"}

the_count.each do |whatever_this_is_called|
    puts "ahh ahha hha hh #{whatever_this_is_called}"
end

=begin
for poop in the_count
    puts "poop poop #{poop}"
end
=end

#Preferred ruby way
fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

#same effect, different syntax
change.each {|i| puts "I got #{i}"}

#build lists too. Start by creating an empty one
elements = []

#range operator
(0..5).each do |i|
    puts "adding #{i} to the list."
    #push i variablne on end of list
    elements.push(i)
end

elements.each {|i| puts "Element was: #{i}"}