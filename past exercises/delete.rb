class Animal
    def initialize(name)
        @name = name 
    end

    def speak (say_something)
        puts "#{say_something} #{say_something}"
    end

end

hazel = Animal.new("hazel") #Created a class for animal with a method to speak, now instantiating that class
hazel.speak("mad")

class Cat < Animal
    def initialize(name)
        @name = name
    end

    def speak()
        super("meow")
    end
end

tiger = Cat.new("Tiger")
tiger.speak

class Person
    def initialize(name) #Person has-a name
        @name = name #assign name parameter to local variable

        @pet = nil #Person has-a pet

        @hobbies = [] #Person has-a list of hobbies, array

        @preferences = {} #Food preferences, object key=>value pair

    end

attr_accessor :pet, :hobbies, :preferences #initializes all attributes

    def describe()
        puts "This person's name is #{@name}."
        puts "#{@name}'s hobbies include:"
        @hobbies.each { |hobby| puts hobby}

        puts "#{@name}'s dietary preferences are:" 
        @preferences.each {|key, value| puts "#{key}: #{value}"} 

        puts "#{@name} has a pet named #{@pet.name}." unless @pet.nil?
    end
end

paws = Animal.new("Paws")
chris = Person.new("Chris")
chris.pet = @paws
chris.hobbies = ["dj","improv","strength training"]
chris.preferences = {"coffee" => "house blend", "meat" => "none", "pizza" => "cheese"}

chris.describe
