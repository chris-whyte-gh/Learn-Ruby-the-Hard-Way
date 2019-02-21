class Animal
    def speak(hubbub)
        puts "#{hubbub} #{hubbub}"
    end
end

chris = Animal.new()
chris.speak("cool")

class Dog < Animal
    def initialize(name)
        @name = name        
    end

    def speak()
        super("woof")
    end
end

zoe = Dog.new("Zoe")
zoe.speak()

class Person < Animal
    
    def initialize(name) #Person has-a name
        @name = name

        @pet = nil #person has-a pet

        @hobbies = [] #person has-a list of hobbies [array]

        @preferences = {} #Dietary preferences, key>value hash
    end
    
    attr_accessor :pet, :hobbies, :preferences, :salary
    
    def describe()
        puts "This person's name is #{@name}."
        puts "#{@name}'s hobbies include: "

        @hobbies.each {|hobby| puts hobby}

        puts "#{@name}'s food preferences are: "

        @preferences.each { |key, value| puts "#{key}: #{value}"}

        puts "#{@name} has a pet named #{@pet.name}." unless @pet.nil?
    end 
    
    def education 
        puts "I am so smart"
    end

end

chris = Person.new("Chris")
chris.pet = "Zoe"
puts chris.pet

class Student < Person
end 

donny = Student.new("Donny")
donny.salary = 140000
puts donny.salary
puts donny.education

richard = Person.new("Richard")
dusty = Dog.new("Dusty")
richard.hobbies = ["dj","swimming","running"]
richard.preferences = {
    "diet" => "vegan",
    1 => "many",
    "pizza" => "always" 
}
richard.pet = dusty #How do I make richard have a pet named "mittens"

richard.describe()