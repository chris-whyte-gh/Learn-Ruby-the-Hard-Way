i = 0 #variable i and initial value
numbers = [] #empty array

while i < 6 #condition for while loop
    puts "At the top i is #{i}" #action, puts value of i
    numbers.push(i) #adds i variable to numbers array

    i += 1 #increase value of i by 1
    puts "Numbers row: ", numbers #puts array
    #this is a list/array, why is there no string interpolation, why a comma
    puts "At the bottom i is #{i}" #puts i, but now increased by 1
end #ends while loop

puts "The numbers: "

#numbers.each {|num| puts num}
#puts "The numbers #{numbers}"
#=begin
numbers.each do |num| #for loop; for each num value in numbers array, put the num value
    puts num
end
#=end