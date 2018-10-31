i = 0
numbers = []

while i < 6
    puts "At the top i is #{i}"
    numbers.push(i)

    i += 1
    puts "Numbers row: ", numbers
    #this is a list/array, why is there no string interpolation, why a comma
    puts "At the bottom i is #{i}"
end

puts "The numbers: "

#numbers.each {|num| puts num}
#puts "The numbers #{numbers}"
#=begin
numbers.each do |num|
    puts num
end
#=end