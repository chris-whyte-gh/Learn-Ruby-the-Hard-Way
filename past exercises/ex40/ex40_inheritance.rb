class Fish #Define fish class
    def swim # Define methods of class fish
        puts "swimming swimming"
    end

    def eat
        puts "nom nom nom"
    end
end

#Now, create a subclass of class Fish
class Catfish < Fish # < is the symbol to inherit from class Fish
    def pick_up
        puts "Imma steal yo man"
    end
end

Linda = Catfish.new # Created the classes above, but now need to make the object

Linda.eat
Linda.pick_up