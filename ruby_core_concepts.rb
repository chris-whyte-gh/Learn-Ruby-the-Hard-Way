=begin
#two ways to print
puts "hello"
print "World"
puts "!"

#variables
name = "Chris"
age = 34

#convert/cast data to another type
#to integer, to float, to string
puts 3.14.to_i
puts 3.to_f
puts 3.0.to_s

puts 100 + "50.99".to_f

#string and indexing
greeting = "Hello"
#indexes: 01234

puts greeting.length
puts greeting[0]
#Does the string have a specific character or substring (Boolean)
puts greeting.include? "llo"
puts greeting.include? "z"
#grabs specific part of the string: 1 is the starting index, then the number of characters to grab
puts greeting[1,3]

#Math
puts 2**3 #Exponent
puts 10%3 #Modulus, returns remainder
puts 10 / 3
puts 10 / 3.0

num = 10
num += 100
puts num

num = -36.8
puts num.abs()
puts num.round()

puts Math.sqrt(144)
puts Math.log(0)

#Get user input
puts "Enter your first name: "
name = gets #pauses program and waits for user input and storing inside name variable
puts "Hello #{name}, how are you?"
puts "Enter your first name, again: "
fname = gets.chomp
puts "Enter your last name: "
lname = gets.chomp
puts "Hello #{fname} #{lname}"
puts "How old are you?: "
age = gets.chomp
puts age.to_i

#ARRAYS (Ruby is dynamic, so can store multiple data types in a single array)

lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0]
#index           0  1   2         3   4   5

lucky_numbers[0] = 90
puts lucky_numbers[0]
puts lucky_numbers[-1]

#[starting index, length]
puts lucky_numbers[2,3]
puts "\n\n"
puts lucky_numbers[2..4]
puts "\n\n"
puts lucky_numbers.length

#N Dimensional Array
number_grid = [ [1, 2], [3, 4] ]
number_grid[0][0] = 99

puts number_grid[0][0]
puts number_grid[0][1]

friends = []
friends.push("Chris")
friends.push("Tom")
friends.push("Sam")

puts friends
friends.pop
puts "Pop"
puts friends
puts "Reverse"
puts friends.reverse
puts "Sort"
puts friends.sort
puts "Include?"
puts friends.include? "Oscar"

# METHODS

def add_numbers (num1, num2 = 45)
    return num1 + num2
end

sum = add_numbers(4)
puts sum

sum = add_numbers(4, 3)
puts sum


# CONDITIONALS
is_student = true
is_smart = false

if is_student and is_smart #can use or logic too
    puts "You are a student"
elsif is_student and !is_smart #! is negation operator
    puts "You are not a smart student"
else
    puts "You are not a student and not smart"
end

if 1 < 5 #Or, >=, <=, !=, == (equality, strictly equal)
    puts "Magic has happened"
end

if "a" < "b"
    puts "A is less than B in the alphabet, using string comparison"
end

if "a" == "b"
    puts "A does not equate to b, so you will never see this line"
end

# CASE OR SWITCH STATEMENTS
my_grade = "B"
case my_grade
when "A"
    puts "You Pass"
when "F"
    puts "You Fail"
else
    puts "Invalid grade"
end

# DICTIONARIES OR ASSOCIATIVE ARRAYS => Arrays that instead of storing individual elements, store key => value pairs
test_grades = {
    #keys need to be unique, but values can be repeated
    "Chris" => "B+",
    :Dan => "A", #Can represent key as a :colon. Anything that starts with : is a symbol, which are useful as keywords so helpful in key=>value pairs
    "Bud" => "D",
    2 => 92.2
}

#test_grades[:Dan] = "C-"
puts test_grades[:Dan]
puts test_grades[2] #This is referencing the key, not the index in an array
puts test_grades["Bud"]

# WHILE LOOPS (execute block of code while condition is true)
index = 1
while index <= 5
    puts index
    index += 1
end

# FOR LOOPS (iterate over)
for index in 0..7
    puts index
end


5.times do |index| #index starts at 0
    puts index
end

Lucky_nums = [4, 8, 15, 16, 23, 42]
for lucky_num in Lucky_nums #lucky_num is an iterating variable in the array structure Lucky_nums
    puts lucky_num
end

Lucky_nums = [4, 8, 15, 16, 23, 42] #does the same as above
Lucky_nums.each do |lucky_num| #pass in iterating variable
    puts lucky_num
end

# EXCEPTION CATCHING
#num = 10/0 #This will return a ruby error, but we can wrap it in code that will catch it for us (below)

# begin
#     num = 10/0
# rescue
#     puts "error"
# end

begin
    num = 10/0
    puts bad_variable #change the order of these two errors to see which one is caught first
rescue ZeroDivisionError #Rescue actual error trying to catch
        puts "zero division error"
rescue
    puts "ALL other errors" #may not want to catch everything
end

raise "Made up exception" #run your own custom exception

# OBJECT ORIENTATION IN RUBY
class Book
    attr_accessor :title, :author #define attributes of the class
    
    def readBook() #define method (a function inside of a class)
        puts "Reading #{self.title} by #{self.author}" #self refers to the title or author of the specific object calling this method
    end
end

new_book_object = Book.new() #creating a new book object, new_book_object, from the Book class
new_book_object.title = "East of Eden"
new_book_object.author = "John Steinbeck"

new_book_object.readBook()
puts new_book_object.title

# CONSTRUCTOR #method called when creating an instance of a class
class Book

    attr_accessor :title, :author
        def initialize(title, author) #initialize method is the constructor
            @title = title #title of object being created is the same as the title passed in
            @author = author
        end

    def readBook()
        puts "Reading #{self.title} by #{@author}"
    end
end

book_object = Book.new("Bible", "Apostles") #.new calls initialize method

puts book_object.title
book_object.readBook()

# GETTERS & SETTERS
# Design pattern thats sets how outside code can access objects and classes
class Book
    #attr_accessor and constructor
    attr_accessor :title, :author
    def initialize(title, author)
        self.title = title
        @author = author
    end
    
    def title=(title) #setter that takes in a title
        puts "Set"
        @title = title
    end
    def title
        puts "Get"
        return @title
    end
end

book1 = Book.new("Moby Dick", "Herman Melville")
puts book1.title

# INHERITANCE
#class inherits functionality from another, super, class
class Chef
    def make_chicken()
        puts "The chef makes chicken"
    end

    def make_salad()
        puts "The chef makes salad"
    end

    def make_special_dish()
        puts "The chef makes a special dish"
    end
end

class ItalianChef < Chef #< means ItalianChef inherits from Chef class, extends on it with make_pasta, and overrides with special_dish
    def make_pasta()
        puts "The chef makes pasta"
    end
    
    def make_special_dish()
        puts "The chef makes veggie parmesan"
    end
end

my_chef = Chef.new()
my_chef.make_chicken()
my_chef.make_special_dish()

my_italian_chef = ItalianChef.new()
my_italian_chef.make_pasta()
my_italian_chef.make_chicken()
my_italian_chef.make_special_dish()
=end
