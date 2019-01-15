#Hashes store data in a list

array = ['a', 2, 4, 'c', 'k']
puts array[1]
array[4] = 'fuck'
puts array

hash_object = {
    'name' => 'chris',
    'age' => 34,
    'fucko' => 'yeah',
    'fuck' => true
}

puts hash_object
puts hash_object['name']
hash_object[2] = "Cool beans"
puts hash_object
# Use numbers to find what's in an array, but only use numbers to get items out of an array
hash_object.delete("fucko")
puts hash_object

puts "---------"
stuff = {
    'name' => 'Chris',
    'age' => 34,
    'height' => 6 * 12 + 3
}

puts stuff
puts stuff['name']
puts stuff['age']
stuff['city'] = 'Atlanta'
puts stuff
print stuff['city']
stuff[1] = 'hello'
puts stuff
stuff[4] = 'this is number 4'
puts stuff
stuff['a new value'] = 'is this put at the end of the hash?'
puts stuff
stuff['a value to delete'] = 'this will go at the end'
puts stuff
stuff.delete('a value to delete')
puts stuff
stuff.delete(1)
puts stuff