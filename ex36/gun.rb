def gun
    puts "You pick up the gun"
    puts "It is a six chamber revolver. You open it to see how many bullets are present."
    puts "Before you do, guess how many might be in the chamber"
    while true
        guess = $stdin.gets.chomp.to_i

        if guess.between?(1, 3)
            puts "You guessed #{guess}"
            exit
        elsif guess.between?(4, 6)
            puts "You guessed #{guess}"
            exit
        else
            puts "Guess a number between 1 and 6"
        end
    end
end