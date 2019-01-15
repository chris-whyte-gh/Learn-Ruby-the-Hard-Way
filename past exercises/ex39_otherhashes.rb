#creating other kinds of hashes
family = {
    'dog1' => 'gulliver',
    'dog2' => 'hazel',
    'wife' => 'rachel',
    'me' => 'chris'
}

love = {
    'real' => 'love',
    'hope' => 'eternal',
    'fuck' => 'nice'
}

reverse = {
    'rachel' => 'wife',
    'dog2' => 'hazel',
    'chris' => 'me'
}

puts '-' * 10
puts family['dog1']
puts "my wife's name is #{family['wife']}"
puts "my wife has #{love['fuck']} #{love['real']}"
puts "my wife #{family[reverse['rachel']]} #{love['real']}s #{reverse['chris']}"
puts "i am #{reverse[family['me']]}"

puts '-fuck-' * 10

numbers = {
    1 => 'one',
    2 => 'two', 
    3 => 'three', 
    4 => 'four', 
    5 => 'five', 
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven'
}

other_numbers = {
    'one' => 'first',
    'two' => 'second',
    'three' => 'third',
    'four' => 'fourth',
    'five' => 'fifth',
    'six' => 'sixth'
}

numbers.each do |number, cardinal|
    puts "#{number} and #{cardinal}"
end

puts '@^#&*' * 10

numbers.each do |number, number2, number3|
    puts "#{number} and #{number3} but also #{number2}"
    cardib = other_numbers[number2]
    puts "#{cardib} thing #{cardib}, what is #{number} will come #{cardib}"
    puts '-' * 10
    if !cardib
        puts "No cardib"
    end
end