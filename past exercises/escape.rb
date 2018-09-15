#backslash \ is the escape character

#escape double-quote inside string
"I am 6'2\" tall."
#escape single quote inside a string 
'I am 6\'2" tall.'

#adds a tab
tabby_cat = "\tI'm tabbed in."
#\n new line
persian_cat = "I'm split\non a line."
#escape backslash
backslash_cat = "I'm \\ a \\ cat."

#new line and tab. Couldn't put this comment below because it would have been in a string and exposed/printed
#triple quotes is another way to escape
fat_cat = """
I'll do a list:
\t* Cat food 
\t* Fishies
\t* Catnip\n\t* Grass
"""

#my own attempt at using escape characters, using a carriage return for the last item, which brings it back to the start of the line and overwrites whatever is present up to its characters: Like \n except not a new line and it overwrites
complex_escape_variable = """ \n\tThis is a new \a \"list\":\nOne\nTwo\rThree """ 

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
puts complex_escape_variable