puts "Welcome to Hell. You see a dog and a cat. Who do you talk to?"
print "> "
first_encounter = gets.chomp

if first_encounter.downcase == "dog"
        puts "You say hello to the dog, but the dog does not speak. Instead, it pushes its water dish closer to you with its nose. What do you do?"
        puts "A. Fill the dog's water dish."
        puts "B. Pet the dog, but politely explain you have no water."
        print "> "
            dog_demand = gets.chomp
                if dog_demand.downcase == "a"
                    puts "You are a good person. You help those in need, and work towards equality in the universe. God sees this and brings you up to heaven. Well done."
                elsif dog_demand.downcase == "b"
                    puts "The dog gnarls its teeth, bites your leg, and rips out a chunk of your left calf. You wobble away, but the last thing you feel is a trickle of liquid down your back. The dog is over you. This will not end soon."
                else
                    puts "You and the dog stare at each other. This is truly hell."
                end

elsif first_encounter.downcase == "cat"
        puts "You say hi to the cat. It meows at you and curls up to its food dish. What do you do?" 
        puts "A. Kick the food dish away from the cat."
        puts "B. Pet cat, but explain that you don't carry cat food."
        print "> "
            cat_demand = $stdin.gets.chomp
                if cat_demand.downcase == "a" || cat_demand.downcase == "b"
                    puts "The cat, with squinted eyes and growling teeth, stares deep into your brain. It reads your thoughts, understands your deep desires, and knows your vices. It hisses. You take a step back. A dog barks behind you. The last thing you feel is a mouth of sharp teeth at the top of your head. Goodbye."
                else
                    puts "You and the cat stare at each other. Neither of you has made a decision. This is truly hell."
                end
else
    puts "Welp, if you won't talk to either of them, I guess you're just going to stay here. Welcome to hell. Try to guess a number between 1 and 10."
    print "> "
    number = gets.chomp
        if number.to_i >= 0 && number.to_i <= 3
            puts "Hey, #{number} is a great number!"
        elsif number.to_i >= 4 && number.to_i <= 6
            puts "Not bad, #{number} is a solid middle choice."
        elsif number == 7
            puts "Ahh, lucky number #{number}."
        elsif number.to_i >= 8 && number.to_i <= 10
            puts "Whoa, high roller with number #{number}"
        else
            puts "Not what I asked for, bud."
        end
end