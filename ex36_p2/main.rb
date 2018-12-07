require "./bride.rb"

def start
    puts "You are in the cabin."
    puts "You head to the basement and see an assortment of items."
    puts "Do you want to look at them? Yes or No"

    while true #Put while loop before input
    
        examine_items = $stdin.gets.chomp.downcase
    
        if examine_items == "yes"
            pick_items
        elsif examine_items == "no"
            puts "You sit around doing nothing."
            puts "Your stupid friend picks something up"
            pick_items
        else
            puts "Make a choice"
        end

    end
end

def pick_items
    puts "On a mannequin there is a wedding dress and a necklace"
    puts "On a table, there is a conch shell"
    puts "Which one do you look at?"

    item = $stdin.gets.chomp.downcase

    if ["dress", "wedding dress", "necklace"].include?(item) #if the item input is included in the array
        Bride.start(item) #Look into this
    elsif item.include?("conch") || item.include?("shell")
        Merman.start()
    else
        puts "You didn't pick anything."
        dead("You're so boring")
    end
end

def dead(reason)
    puts reason + " " + "Game over" #Can also use << to concatenate
    exit(0)
end

start