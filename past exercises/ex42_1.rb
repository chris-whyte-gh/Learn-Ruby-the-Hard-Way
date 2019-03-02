class Book
    attr_accessor :title, :author, :pages
end

book1 = Book.new()
book1.author = "Herman Melville"
book1.title = "Moby Dick"
book1.pages = "400"

puts book1.author

class Animal 
    attr_accessor :eat
    #def eat
     #   puts 'eating'
    #end
    eat = puts "eating"

    def sleep
        puts "sleeping"
    end

    def fight
        puts "fighting"
    end
end

class Human < Animal
    attr_accessor :eat
    
    def eat
        super + " like a human boss"
    end   

    def yell
        puts "yelling"
    end
    def fight
        puts super + "like a human"
    end
    def sleep
        puts super + "like a human sleeper"
    end
end

class PandaBear < Animal
    def eat
        super + " bamboo like a Panda Bear"
    end
    def sleep
        puts super + " like a panda"
    end
    def mate
        puts "yeah dawg"
    end
end

mable = Animal.new()
mable.eat
mable.sleep
mable.fight

chris = Human.new
chris.eat
