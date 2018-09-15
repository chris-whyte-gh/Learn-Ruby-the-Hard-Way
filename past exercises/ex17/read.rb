#the user passes in a string as the first argument
#file_variable is just a string
file_variable = ARGV[0]

puts "This is the name of the file #{file_variable}"

#File is a ruby class, it lays out the structure for how to work with objects called file
#we pass the string file_variable to the File class
#the string is being acted upon as an object of the file class, saved to the variable myfile
#we can now act on myfile as an object
myfile = File.open(file_variable)

#read is a function to get the content in the file
puts myfile.read()

