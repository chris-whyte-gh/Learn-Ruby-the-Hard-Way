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
    attr_accessor :name, :pet, :salary
    
    def education 
        puts "I am so smart"
    end
end

chris = Person.new
chris.pet = "Zoe"
puts chris.pet

class Student < Person
end 

donny = Student.new
donny.salary = 140000
puts donny.salary
puts donny.education