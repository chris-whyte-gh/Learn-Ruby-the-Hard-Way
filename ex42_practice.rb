## Animal is-a object 
class Animal
end

## ?? Dog is-a animal
class Dog < Animal

    def initialize(name)
        ## ?? class dog has-a initialize method
        @name = name 
    end
end

## class Cat is-a Animal
class Cat < Animal
    def initialize(name)
        ## class Cat has-a initialize method
        @name = name
    end
end

## class Person has-a initialize method and a name variable
class Person
    def initialize(name)
        ## intialize method has-a name
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet
end

## ?? 
class Employee < Person

    def initialize(name, salary)
        ## super calls the method of the parent class (Person)
        super(name)
        ## initialize has-a @salary variable
        @salary = salary
    end
end

## create a class Fish
class Fish
end

## class Salmon is-a Fish
class Salmon < Fish
end

## class Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

# Mary is-a Person
mary = Person.new("Mary")

# Mary has-a pet Satan
mary.pet = satan

# Frank is-a employee with 120000 salary
frank = Employee.new("Frank", 120000)

# Frank has-a pet rover
frank.pet = rover

# Flipper is-a instance of the Fish class
flipper = Fish.new()

# crouse is-a instance/object of the Salmon class
crouse = Salmon.new()

#harry is-a Salmon
harry = Halibut.new()

