#Function print_two: Takes two arguments, like ARGV
#def says 'make a function and give it a name'
def print_two(*args)
    #*args takes all arguments to the function and puts them in args as a list (array?)
    #unpack the argument, assign args to arg1 and arg2
    arg1, arg2 = args
    #print arg1 = this arg
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

#Does same as above, but doesn't use unnecessary *args, unpacking and assigning arguments. We just use the arguments submitted
def print_two_again(arg1, arg2)
    #puts "arg1: #{arg1}, arg2: #{arg2}"
    puts "#{arg1} #{arg2}"
end

#Take a single argument
def print_one(arg1)
    puts "arg1: #{arg1}"
end

#Does not take an argument
def print_none()
    puts "I got nothin'."
end

#call and print the functions
print_two("Chris", "Whyte")
print_one("Chris")
print_two_again("Cool", 34)
print_none