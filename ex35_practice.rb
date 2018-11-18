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
            puts "You stare in the abyss and don't move. Make a choice: "
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
            print "You successfully push the rock further away. Where now? >> " 
            rock_present = false
        elsif choice == "walk" && rock_present
            print "Wish I could help you, but there is a rock in your way. >>"
        elsif choice == "walk" && !rock_present
            print "You see a castle and a bank? Where do you go? >> "
            direction = $stdin.gets.chomp.downcase
                if direction == "bank"
                    bank
                elsif direction == "castle"
                    castle
                else
                    make_choice
                end
        else
            make_choice
        end

    end

end

def castle
    puts "There is an evil king here. He sends you back to the beginning."
    start
end

def bank
    puts "You want some money. How much?"
    money_input = $stdin.gets.chomp
    if money_input.to_i.to_s == money_input
        money = money_input.to_i
    else
        murdered("That's not a number.")
    end

    if money < 100
        puts "Not bad, here's a nickel instead"
        exit(0)
    else
        murdered("You greedy bastard.")
    end
end

def murdered(why)
    puts why, "Fuck off"
    exit
end

def make_choice
    puts "make a choice bud"
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
