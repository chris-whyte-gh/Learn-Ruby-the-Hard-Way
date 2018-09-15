#get first object in user submitted array
filename = ARGV.first

#open the file, save contents to new variable
opened_file = open(filename)

#read the file, print its content. Without puts, nothing displays
puts opened_file.read

#close the file
opened_file.close

