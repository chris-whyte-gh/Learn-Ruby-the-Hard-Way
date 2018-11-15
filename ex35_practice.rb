def start
    print "You are in a field. You can go left, right, straight, or backwards. Where do you go? >> "

    while true #If I were to use a for loop, how? What would the array be
        direction = $stdin.gets.chomp.downcase #ask for input within the definition. The direction variable is only accessible within this definition
        if direction.include? "left" #checking for user input that includes the word 'left'
            puts "Heading left"
            left
        elsif direction.include? "right"
            puts "Heading right"
            right
        elsif direction.include? "straight"
            puts "Going straight"
            straight
        elsif direction.include? "backward"
            puts "Stepping backwards"
            backwards
        else 
            puts "You stare in the abyss and don't move. Make a choice >> "

        end
    end
end

def left
    rock
end
        
def right
    rock
end

def straight
    rock
end

def backwards
    wait
end

def rock
    print "There is a rock in your way. What do you do? (kick the rock, push the rock, walk around the rock) >> "
    rock_present = true
    while true
    choice = $stdin.gets.chomp.downcase
        if choice.include? "kick"
            print "You hurt yourself. You decide to sit on the rock and not go anywhere."
            exit
        elsif choice.include? "push"
            print "You successfully push the rock further away. Where to now? >> "
        elsif choice == "walk" && rock_present
            print "Wish I could help you, but this rock doesn't allow walking around. You trying pushing it. >> "
            rock = false
        elsif choice == "walk" && !rock_present
            print "Smart move buddy. You walk around and continue on your way >> "
            exit
        else
            puts "Make a choice, bud"
        end
    end
end

def wait
    puts "wait here"
    exit
end

start
        

=begin
def encourage(motivationalPhrase)
    puts motivationalPhrase, "You can do it!"
    exit
end

decision
=end
