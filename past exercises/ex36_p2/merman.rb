module Merman

    def Merman.start()
        #puts "You picked #{item}"
        puts "You put the shell to your ear and hear ocean waves."
        puts "You feel a damp sensation in your shoes. Do you look down?"
        while true

        look_down = $stdin.gets.chomp.downcase

            if ["yes","y"].include?(look_down)
                Merman.fight()
            elsif ["no","n"].include?(look_down)
                puts "You ignore the sensation, the merman sneaks up behind you."
                dead("The merman eats your body!")
            else 
                puts "Please pick yes or no"
            end
        end
    end

def Merman.fight()
    puts "A merman comes toward you."
    puts "It looks a bit silly"

    puts "Do you"
    puts "1. Run up the stairs"
    puts "2. Laught at the merman"
    puts "3. Break the sea shell"

    fight_choice = $stdin.gets.chomp
    
    if fight_choice == "1"
        Merman.stairs()
    elsif fight_choice == "2"
        dead("Laugh all you want, now you're dead!")
    elsif fight_choice == "3"
        puts("You break the seashell and the merman lets out a wail")
        win("the merman")
    end
end

def Merman.stairs()
    puts "There are 20 steps to the top of the stairs."
    steps = []

    (1..3).each do |number|
        puts "How many steps do you take for step ##{number}?"

        step = $stdin.gets.chomp.to_i
        steps.push(step)
    end

    total = steps.inject(0, :+)

    if total == 20
        puts "You fly up the stairs while the merman flops at the bottom."
        win("the merman")
    else
        dead("You trip while running up the stairs and tumble down.")
        dead("The merman gobbles you up.")
    end
    end
end


