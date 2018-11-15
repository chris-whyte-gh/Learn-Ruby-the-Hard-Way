def start #define start function with strings and input from user
    puts "You are in a dark room."
    puts "There is a door to your right and left."
    puts "Which one do you take?"

    print "> "
    choice = $stdin.gets.chomp.downcase

    if choice == "left"
        bear_room
    elsif choice == "right"
        cthulu_room
    else
        dead("You stumble around the room until you starve.") #calls dead function
    end
end

def bear_room #this function runs once the user inputs left
    puts "There is a bear here."
    puts "The bear has a bunch of honey."
    puts "The fat bear is in front of another door."
    puts "How far are you going to move the bear?" #these are strings put to the screen
    bear_moved = false #this is a variable set to false

    while true #this is a while loop that will run while the condition is true. What condition?
        print "> "
        choice = $stdin.gets.chomp #after string above, user needs to input one of the answers from below

        if choice == "take honey" #if take honey was entered, the user dies
            dead("The black bear looks at you then slaps your face off.")
        elsif choice == "taunt bear" && !bear_moved #if taunt bear was entered and bear_moved does not equal its current value (false), puts string that the bear has moved, and change value of variable to true
            puts "The bear has moved from the door. You can go through it now."
            bear_moved = true
        elsif choice == "taunt bear" && bear_moved #does the same thing as above, but this time checks that the value of bear_moved is whatever the value exists.
            gold_room
        else
            puts "I got no idea what that means."
        end
    end
end

def cthulu_room
    puts "Here you see the great evil Cthulu."
    puts "He, it, whatever stares at you and you go insane."
    puts "Do you flee for your life or eat your head?"

    print "> "
    choice = $stdin.gets.chomp

    if choice.include? "flee"
        start
    elsif choice.include? "head"
        dead("Well that was tasty!")
    else
        cthulu_room
    end
end

def gold_room
    puts "This room is full of gold. How much do you take?"

    print "> "
    choice = $stdin.gets.chomp

    if choice.include?("0") || choice.include?("1")
        how_much = choice.to_i
    else
        dead("Man, learn to type a number.")
    end

    if how_much < 50
        puts "Nice, you're not greedy, you win!"
        exit(0)
    else
        dead("You greedy bastard!")
    end
end


def dead(why) #takes argument, puts it to screen, then follows it up with Good job and exits the program. Exit doesn't need 0, but is used by the computer to log that an exit happened.
    puts why, "Good job!"
    exit(0)
end

start