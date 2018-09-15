#Get the first two arguments and save them as from_file, to_file
from_file, to_file = ARGV

puts "Copying content from #{from_file} to #{to_file}"

#open first file, just a filename right now, save it to variable in_file as an object 
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
#waiting to get user input
$stdin.gets

#open to_file, make it writable, save to variable out_file
out_file = open(to_file, 'w')
#write contents of indata to out_file
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close