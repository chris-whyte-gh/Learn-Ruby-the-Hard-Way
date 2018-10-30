eyes = ['brown', 'blue', 'green', 'hazel']
dogs = ['hazel', 'gulli', 'zoe', 'dusty']
cats = ['tiger']
weight = [1, 2, 3, 4]

weight.each do |number|
    puts "This is my weight in numbers #{number}"
end

eyes.each do |color|
    puts "My eye color is #{color}"
end

empty_list = []

(-1..6).each do |count|
    puts "I'm counting up from #{count}"
    empty_list.push(count)
end

empty_list.each {|count| puts "Empty list was #{count}"}

dogs.each do |name|
    puts "Hi! My name is #{name}"
end

blank = []

(0...10).each do |number|
    puts "Here is my number: #{number}"
    blank.push(number)
end

blank.each {|number| puts "blank number is #{number}"}

blank_list = []
(0..10).each do |count|
    blank_list << count
    print "blank list = #{blank_list}"
end
    
puts blank_list[11]
puts blank_list[0]
puts blank_list[5]

two_ds = [[1, 2, 3],[4, 5, 6]]

cats.push("spots")

cats.each {|cat| puts "my cat name is #{cat}"}