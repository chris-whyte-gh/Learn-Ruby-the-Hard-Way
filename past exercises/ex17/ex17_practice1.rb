#ask for two arguments 
initial_file, destination_file = ARGV

#Open creates a File object and assign it to a file
string = open(initial_file)
contents = string.read

#Does the File 'destination_file' exist? boolean
puts File.exist?(destination_file)

#open destination_file as an object out_file, make it writable
out_file = open(destination_file, 'w')
out_file.write(contents)

out_file.close
string.close

=begin
In one line
initial_file, destination_file = ARGV; string = open(initial_file); contents = string.read; puts File.exist?(destination_file); out_file = open(destination_file, 'w'); out_file.write(contents); out_file.close; out_file.close
=end

#File.write(ARGV.last,File.read(ARGV.first))