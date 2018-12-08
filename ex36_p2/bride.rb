module Bride
    
def Bride.start(item)

    puts "You picked the #{item}"

    if ["dress","wedding dress"].include?(item)
        Bride.dress_track()
    elsif item.include?("necklace")
        Bride.necklace_track()
    end
end

def Bride.dress_track
    puts "You put on the dress"
    puts "You feel itchy. Do you..."

    choices = ['take off the dress', 'ignore the itching']
    (1..choices.length).each do |number|
        puts "#{number}. %s" % choices[number-1]
end

print "You pick number: "
choice = $stdin.gets.chomp

    if choice == "1"
        puts "The dress is too itchy so you take it off"
        puts "You look at the necklace instead."
        Bride.necklace_track()
    elsif choice == "2"
        dead("You get a fatal reaction and die")
    else
        Bride.dress_track
    end
end


def Bride.necklace_track()
    puts "You put on the necklace"
    puts "Suddenly you see the bride of frankenstein"

    print "Quick, pick a number between 1 and 10: "

    number = $stdin.gets.chomp.to_i

    if number.even?
        Bride.fight()
    else
        dead("The bride takes you for a scientific experiment")
    end
end

def Bride.fight()
    puts "You dodge the bride's arms."
    puts "Do you run or fight?"
    bride_alive = true
    bride_weak = false

    while bride_alive
        print "> "
        response = $stdin.gets.chomp

        if response == "run" && !bride_weak
            puts "You try to run."
            dead("The bride catches up to you.")
        elsif response == "run" && bride_weak
            bride_alive = false
            puts "You escape"
            win("the bride")
        elsif response == "fight" && !bride_weak
            puts "You punch the bride in the face. She falls over."
            bride_weak = true
        elsif response == "fight" && bride_weak
            bride_alive = false
            puts "You punch the bride again and she disintegrates into dust"
            win("the bride")
        end
    end
end

end

