#Asks user for name of file, then saves that filename to input_file
input_file = ARGV.first

#Runs read method on f, in this case the file object current_file. It will read the entire contents of 'f'
def print_all(f)
    puts f.read
end

#The rewind method takes a single argument, f, and moves the file pointer from the end of the file to the beginning using an integer for location. Whe a file is read, the pointer moves from the beginning to the end
def rewind(f)
    f.seek(0)
end

def print_a_line(line_count, f)
    #I think it only prints out one line because 'gets' only gets a single line of text
    #gets = get string
    #Yep, https://staceylearnscode.wordpress.com/2015/09/18/learn-ruby-the-hard-way-exercise-20-functions-and-files/
    #gets identifies lines by separators and remembers where the cursor is
    puts "#{line_count}, #{f.gets.chomp}"
    #Reading line by line is preferred to reading the entire contents of the file, which the comp might not have enough memory for
end

#https://code-maven.com/open-file-and-read-content-in-ruby
#Open the file in read mode to return an instance of the File class, saved to current_file
#This lets us act on current file and 'read' its contents
current_file = open(input_file)

#To print the content of current file as a file object
#puts current_file

puts "First let's print the whole file:\n"

print_all(current_file)

#Without this line, the code errors with can't run chomp on nil
#I think it's because we ran through all the content in the file with print_all, so we're at the end and there is nothing to chomp
puts "Now let's rewind, kind of like a tape."
rewind(current_file)

puts "Let's print three lines: "
#We are asking for 3 lines, so our file needs 3 lines
#But what makes this print a single line and not the entire content
current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

=begin
    What happens in this file:
    1. Take arg via command line, opens it as a File object, reads its contents, then prints them out
    2. Seeks, goes back to, the 0th position of the file contents
    3. Prints a single line using gets.chomp with a number
=end