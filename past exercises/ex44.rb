
# Inheritance

class Foo < Bar
    # class Foo (child) inherits from Bar (Parent)

   

# Implicit Inheritance
class Parent

    def implicit()
        puts "PARENT implicit()"
    end
end

class Child < Parent
    # Child class inherits from Parent class
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()


# Override Explicitly

class Parent

    def override()
        puts "PARENT override()"
    end
end

class Child < Parent
    def override()
        puts "CHILD override()"
    end
end

dad = Parent.new()
daughter = Child.new()

dad.override()
daughter.override()

=end 

# Super() / altered

# Super calls the original method
class Parent
    def altered()
        puts "PARENT altered()"
    end
end

class Child < Parent
    def altered()
        puts "CHILD, BEFORE PARENT altered()"
        super()
        puts "CHILD, AFTER PARENT altered()"
    end
end

mom = Parent.new()
son = Child.new()

mom.altered()
puts "-------"
son.altered()