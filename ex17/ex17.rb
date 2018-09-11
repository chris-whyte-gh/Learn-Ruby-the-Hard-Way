from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

#open first file, from_file, save it to variable in_file, read that and save it to indata
in_file = open(from_file)
indata = in_file.read

puts "The input file is #{indata.length} bytes long"

#call exist? method of File object with variable to_file
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