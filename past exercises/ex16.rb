filename = ARGV.first
#Take arguments passed to ruby command and stores first value in a variable 'filename'. ARGV is an array containing all arguments passed to it. first just takes the first argument. 
#Use ARGV so you can take input from the command line instead of script execution

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets
#gets does not store data, but returns value of the method. Gets pauses execution of script and waits for user input. User can review script and terminate if they want to 

#we can use gets.chomp in scripts without ARGV since there are no arguments. But because gets will try to read an argument as a file, we use $stdin.gets.chomp to get user input

puts "Opening the file..."
target = open(filename, 'w')
#'w' is an argument putting open() into write mode. Open defaults to read mode. 'w' also truncates the file if it exists though

puts "Truncating the file. Goodbye!"
target.truncate(0)
#truncate deletes contents of file

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

=begin
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
=end

target.write("line 1: #{line1}\nline 2: #{line2}\nline 3: #{line3}\n")

=begin
#this doesn't seem to work because we can't write to the same file we're going to read from"
puts "Let's read it!"
target1 = open(target, "r")
#openfile = open(target)
puts target1.read
=end

open_file = open(target, "r")

puts open_file.read

puts "And finally, we close it."
target.close

