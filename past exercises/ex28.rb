# https://learnrubythehardway.org/book/ex28.html
puts 3 != 4 && !("testing" != "test" || "Ruby" == "Ruby")
#Do the conditions of this statement equal true or false
#Take the conditions and solve equality tests (= , !=). Then, look at combinations && or || or inversions (!)

#Relational operators: https://en.wikipedia.org/wiki/Relational_operator
puts 3 <= 4 
puts 1<=1
#puts ("1"<=1) # can't compare string to integer 
puts "a" <=> "b"
#spaceship operator
=begin
a < b = -1
a = b = 0
a > b = 1
a != b = nil
=end

# Ruby and other languages return operands (I think the true value) instead of boolean (unless in terminal)
puts "test" && "test"
puts 1 || 1
puts false && 1
puts true && 1
puts false || 1
puts false && 1

#Also, any && that has a false value will be false immediately
# Any || that has a true will be true