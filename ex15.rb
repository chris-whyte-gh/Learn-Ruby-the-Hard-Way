#we're opening a file (ex15_sample) with our script

filename = ARGV.first #Uses argv to get a file name, just the first thing submitted

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read