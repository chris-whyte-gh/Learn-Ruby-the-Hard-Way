=begin
animals = ['bear','ruby','peacock','kangaroo','whale','platypus']

puts the_animal_at_1 = animals[1]
puts the_third_animal = animals[2]
puts the_first_animal = animals[0]
puts the_animal_at_3 = animals[3]
puts the_fifth_animal = animals[4]
puts the_animal_at_2 = animals[2]
puts the_sixth_animal = animals[5]
puts the_animal_at_4 = animals[4]

#2010 is really 2010 because it is ordinal and we have a 2000

=begin
array = [1, 'chris', 34, 'age', 'please', 'apples', 2]
puts "The first item in the array is #{array[0]}. \n Now, let me tell you a little about me. First, my name is #{array[1]} and I am #{array[2]} years old. Here are other things I have in the array #{array[3, 6]}"
=end

def check_ordinal(ordinal)
    animals = ['bear','ruby','peacock','kangaroo','whale','platypus']
    if ordinal >= 1 && ordinal <= animals.length
        puts "The item at place #{ordinal-1} is %s and is number #{ordinal}"  %animals[ordinal] #% is a formatter
    else
        puts "I don't know"
    end
end

check_ordinal(0)
check_ordinal(1)
check_ordinal(2)
check_ordinal(3)
check_ordinal(4)
check_ordinal(5)

