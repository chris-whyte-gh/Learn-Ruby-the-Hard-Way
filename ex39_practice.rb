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

hash_object.delete("fucko")
puts hash_object