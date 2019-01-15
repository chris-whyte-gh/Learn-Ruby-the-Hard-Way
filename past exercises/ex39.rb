#create a mapping of state to abbreviation
states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}

# create a set of states and cities in them

cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville',
}

#add more cities. How would I add two cities for the same state?
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"
puts "CA State has: #{cities['CA']}"

#put some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "California's abbreviation is: #{states['California']}"
puts "Florida's abbreviation is: #{states['Florida']}"

#Do it using state then cities dict
puts '-' * 10
puts "A city in #{states['California']} is #{cities['CA']}"
puts "Florida has #{cities[states['Florida']]}"
puts "The abbreviation for #{cities['NY']} is #{states[cities['NY']]}"

#put every state abbreviation
puts '-' * 10
states.each do |first, second| #could do state and abbrev as arguments as well
    puts "#{first} has #{second}" #string interpolation
end

#puts every city in state
puts '-' * 10
cities.each do |state, city|
    puts "#{city} is in #{state}"
end

#now both at the same time
puts '-' * 10
states.each do |state, abbreviation|
    city = cities[abbreviation]
    puts "#{city} is located in #{state}, which is shortened to #{abbreviation}"
end

puts '-' * 10
# nil is default when nothing is there
state = states['Texas']

if !state
    puts "Sorry, no Texas"
end

#default values using ||= with the nil result
city = cities['TX']
city ||= 'Does not exist'
puts "The city for the state 'TX' is #{city}"