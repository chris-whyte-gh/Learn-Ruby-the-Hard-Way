#Take an argument
#Create a File object from that input
#Read the file and print out its contents
#Go back to the beginning of the file
#Read each line of the file with numbers
#Close the files 'puts file.closed?'

input_file = ARGV.first

def print_with_numbers(current_line_number, line)
    #Forgot to use string interpolation
    puts "#{current_line_number}, #{line.gets.chomp}"
end

#io open is a synonym for new (create File Object)
#http://ruby-doc.org/core-2.5.1/IO.html
#https://blog.udemy.com/ruby-file-open/
file_to_read = File.open(input_file)

puts file_to_read.read
puts "Do it again, but skip a letter"
file_to_read.seek(1)

#This doesn't seem like the right way to do it, hard coding values and calculating integers, but I don't think I've learned a better way yet.

current_line_number = 1
print_with_numbers(current_line_number, file_to_read)
current_line_number += 1
print_with_numbers(current_line_number, file_to_read)
puts "another line"
current_line_number += 1
print_with_numbers(current_line_number, file_to_read)
puts file_to_read.closed?
file_to_read.close
puts file_to_read.closed?



