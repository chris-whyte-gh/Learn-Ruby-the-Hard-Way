class Doggy # 1 Create a class
# 2 Create attr_accessor to give class attributes to build with objects. attributes are denoted with :
# attr_accessor allows you to build objects with attributes
attr_accessor :age
end

new_doggy = Doggy.new # 3 Create a new variable (object) of class Doggy
new_doggy.age = 4 #assign age attribute

puts new_doggy.age 

puts '-' * 20

# The initialize method
class Fish
    attr_accessor :name, :age

    # Instead of creating an object and giving it attributes after its created, initialize lets you create/initialize the object with the parameters passed in
    def initialize(name, age) #upon creation, we give the object a name
        @name = name #this lets us call the name in the class
        @age = age
    end

    def greeting
        puts @name 
    end

    def age
        puts @age
    end
end

fish1 = Fish.new("bobby is the fish's name", 56) #create a fish with a name

fish1.greeting
fish1.age