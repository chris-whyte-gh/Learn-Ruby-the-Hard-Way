def gun
    puts "You pick up the gun"
    puts "It is a six chamber revolver."
    puts "Guess how many might be in the chamber"
    while true
        guess = $stdin.gets.chomp.to_i

        if guess.between?(1, 6)
            puts "You guessed #{guess}"
            roulette
        else
            puts "Guess a number between 1 and 6"
        end
    end

end

def roulette
    puts "You hold the gun to your head."
    puts "How many shots do you take?"

    while chamber = 6 do
    begin
        shot = Integer(gets.chomp)
    rescue => exception
        p "Choose a number"
        retry
    end

    if shot.between?(1, 3)
        puts "Lucky you. Try again."
        chamber = chamber - 1
    elsif shot.between?(4, 6) 
        dead("You shot yourself")
    else
        dead("You're out of bullets!")
    end
end

end

#shots 