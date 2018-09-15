#More printing exercises

#two variables of strings, months using new lines
days = "Mon Tue Wed Thu Fri Sat Sun"
months = "\nJan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

#taking away %q causes puts to stop working.
#Hmm, https://stackoverflow.com/questions/29268215/why-use-q-or
#% and %q are string literals with different parsing rules
# %Q and %q are alternatives for double and single quotes without having to escape characters: https://simpleror.wordpress.com/2009/03/15/q-q-w-w-x-r-s/
puts %q{
    There's something going on here.
    With this weird quote
    We'll be able to type as much as we like.
    Even 4 lines if we want, or 5, or 6.
}