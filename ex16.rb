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

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3:"
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close