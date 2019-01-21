require "./mystuff.rb"

#calling method
MyStuff.apple()

#calling variable
puts MyStuff::TANGERINE

mystuff['apple'] #get apple from dictionary
MyStuff.apple() #get apple from module
MyStuff::TANGERINE #same thing, it's just a variable

#with a hash, the key is a string and the syntax is [key]
#with a module, key is an identifier and syntax is .key

#module is a special hash to store Ruby code to access with dot operator
#class is similar: groups functions/data and places them in a container, accessed via dot operator

class MyStuff

    def initialize()
        @tangerine = "And now a thousand years between"
    end

    attr_reader :tangerine

    def apple()
        puts "I AM CLASSY APPLES!"
    end
end