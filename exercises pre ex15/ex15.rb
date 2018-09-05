#we're opening a file (ex15_sample) with our script

filename = ARGV.first #Uses argv to get a file name, just the first thing submitted

txt = open(filename) #open is a command/function/method

puts "Here's your file #{filename}:" #puts filename name
print txt.read #runs function read on txt variable

print "Type the filename again: " #does the same thing as above with a different variable name
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read