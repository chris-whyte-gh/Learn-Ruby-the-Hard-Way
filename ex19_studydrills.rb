#Can take 3 arguments via ARGV in place of in the script
#Doesn't matter if you don't supply anything
height, width, length = ARGV

#Making a function to calculate dimensions of turntable

def turntable(height, width, length)
    puts "The turntable is #{height} inches tall"
    puts "The turntable is #{width} inches deep"
    puts "The turntable is #{length} inches long"
end

def turntable_area(height, width, length)
    area = height.to_i * width.to_i * length.to_i
    puts "The area is: #{area} inches"
end

#convert input to integers
puts "Give me the height in inches: "
height = gets.chomp.to_i
puts "Give me the width (depth) in inches: "
width = gets.chomp.to_i
puts "Give me the length in inches: "
length = gets.chomp.to_i

turntable(height, width, length)
turntable_area(height, width, length)