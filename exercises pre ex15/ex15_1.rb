#Assign first argument on command line to variable 'my_file'
my_file = ARGV.first

#my_file is passed as a parameter to the open method
#Open method returns a file object and assigned to variable 'text'
#The file object is not the contents of the file. Open will not return the contents of the file, it makes a file object.
text = open(my_file)

puts "Here's your file #{my_file}"

#call read method on file object 'text'
#puts the returned string
puts text.read

#close the text file
text.close

#repeats everything above
print "Give me the file name again: "
#removing #stdin or gets.chomp breaks the file
#get standard input from user, remove new end line character, and assign string to new variable
file_name_retyped = $stdin.gets.chomp

#pass file_name_retyped as parameter to open method and assign returned
#file object to a new variable
same_text = open(file_name_retyped)

#call read method on same_text
#print string
print same_text.read

#close the same_text file
same_text.close
