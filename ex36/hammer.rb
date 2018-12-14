def hammer
    puts "You pick up the hammer"
    puts "There are 10 nails on the table"
    puts "You decide now is the time in life when you want to hammer shit"

    nails = []
    (1..3).each do |strike| #for loop through 4 iterations (1..4) is the array
        puts "How many nails do you hit on strike ##{strike}?"

    begin
        #strike = gets.chomp.to_i #can convert letters to numbers, which is not good
        strike = Integer(gets.chomp)
    rescue => exception
        p "Please submit a number"
        retry
    end        

    nails << strike #add items to array. Can also do nails.push(strike)
    end

    total = nails.inject(0, :+) #inject adds the individual items in the nail array to total

    if total == 10
        puts "Well done"
        exit(0)
    elsif total < 10
        puts "Too few"
        exit(0)
    elsif total > 10
        puts "Too many"
        exit(0)
    else
        abort("This should never run.")
    end

end