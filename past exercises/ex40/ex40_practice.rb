#create hash then print value for submitted key. Get x from y
mystuff = {
    'apple' => "I AM APPLES!"
}

puts mystuff['apple']

=begin
modules are ruby files with functions or variables inside
module .. end
import the file
access functions/variables with dot operator
=end

#3 ways to get things from things

#dict style
mystuff['apple']

#module style
MyStuff.apples()
puts MyStuff::TANGERINE

#class style
thing = MyStuff.new()
thing.apples()
puts thing.TANGERINE
