class Animal
end

class Dog < Animal
    def initialize(name)
        @name = name
    end
end

# creating a class Cat that is-a animal and has-a name variable
class Cat < Animal
    def initialize(name)
        @name = name
    end
end

class Person
    def initialize(name)
        @name = name
        @pet = nil
        attr_accessor :pet
    end
end

class Employee < Person
    def initialize(name, salary)
        super(name)
        @salary = salary
    end
end

#creating a class fish with no methods
class Fish
end

# creating a class Salmon that is a fish and has no methods
class Salmon < Fish
end

class Halibut < Fish
end

# rover is an object instance of the Dog class with a variable name "Rover"
rover = Dog.new("rover")

satan = Cat.new("satan")

# Mary is-a person
mary = Person.new("Mary")

# mary has-a pet satan
mary.pet = satan

frank = Employee.new("Frank", "120000")

# Frank the employee has a pet rover
frank.pet = rover

# Flipper is an instance of the Fish class. Careful, Fish doesn't have a name variable
flipper = Fish.new()

crouse = Salmon.new()

harry = Halibut.new()



