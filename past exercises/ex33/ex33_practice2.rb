=begin
def while_loop(number, increment)
    i = 0
    numbers = []
    while i < number
        puts "At the top i is #{i}"
        numbers.push(i)

        i += increment
        puts numbers 
        puts "At the bottom, i is #{i}"    
    end
    puts "The numbers: "

    numbers.each {|num| puts num}
end

while_loop(2, 3)
while_loop(5, 2)

while i < 6
    puts "At the top i is #{i}"
    numbers.push(i)

    i += 1
    puts numbers 
    puts "At the bottom, i is #{i}"    
end
=end

#Using a for loop and a range operator
def for_loop(lower_limit, upper_limit) #defining for loop with two arguments
    numbers = [] #defining empty array
    for number in (lower_limit..upper_limit) #for loop; for item in range lower_limit..upper_limit (inclusively)
       puts "The number is : #{number}" #puts something
       numbers.push(number)  #add item in array
    end

    puts "the numbers: ", numbers

    #for number in numbers
        #puts numbers
    #end
end

for_loop(1,5)
