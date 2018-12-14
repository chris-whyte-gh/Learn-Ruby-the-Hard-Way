def knife
    puts "You pick up the knife"
    puts "How many times do you want to stab yourself?"
    begin
        stabs = Integer(gets.chomp)
    rescue => exception
        p "Please choose a number"
        retry
    end

    if stabs > 1
        dead("One was enough")
    elsif stabs == 1 
        injured("Why did you stab yourself?")
    elsif stabs == 0
        puts "That was the sensible thing to do"
        puts "Pick up another item, either the hammer or the gun"
        while true
        choice = $stdin.gets.chomp
            if choice == "hammer"
                hammer
            elsif choice == "gun"
                gun
            else
                puts "Make a choice"
            end
        end
    else
        dead("You didn't choose a number, so you died")
    end

end