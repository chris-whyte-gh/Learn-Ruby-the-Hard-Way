#Classes in ruby are objects to create blueprints
class Kitty #1 Defined class+ended it
    
    def meow #2 Define methods so Kitty can do things
        puts "meow meow"
    end

    def eat #3 Create as many methods for what the class does
        puts "nom nom nom"
    end

    def purr
        puts "purr purr"
    end
end

#4 Let's create an object from this class. Call it whatever you want, so I called it Tiger
Tiger = Kitty.new #5 Creates an object (instance) of the Kitty class and assigns it to Tiger. But this by itself doesn't do anything

Tiger.meow #6 Runs method meow
Tiger.eat
Tiger.purr
Tiger.meow

puts "Dog"+"-" * 10
#To Create a subclass that inherits from class Kitty
class Dog < Kitty #Dog inherits from Kitty (dog < kitty)
    def bark #Dog can have its own methods
      puts "ruff ruff"
    end
  end
  
  Pup = Dog.new #Still need to create the object from that class
  Pup.bark
  Pup.purr