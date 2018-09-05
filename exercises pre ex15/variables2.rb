name = 'Chris Whyte'
age = 35
height_inches = 75 #inches
height_centimeters = height_inches * 2.54
weight = 200 #lbs
weight_kg = weight * 2.2
eyes = 'brown'
teeth = 'white'
hair = 'blond'

puts "Let's talk about #{name}."
puts "He's #{height_inches} inches tall."
puts "That's #{height_centimeters} in centimeters."
puts "He's #{weight} pounds heavy."
puts "That's #{weight_kg.round} in kilograms."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

puts "If I add #{age}, #{height_inches}, and #{weight} I get #{age + height_inches + weight}."