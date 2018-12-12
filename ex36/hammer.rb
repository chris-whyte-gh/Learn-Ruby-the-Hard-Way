def hammer
    puts "You pick up the hammer"
    puts "There are 10 nails on the table"
    puts "How many do you hit?"

    nails = []
    (1..4).each do |strike| #for loop through 4 iterations (1..4) is the array
        puts "How many nails do you hit on strike ##{strike}?"

    begin
        #strike = gets.chomp.to_i #can convert letters to numbers though, so this is not good
        strike = Integer(gets.chomp)
    rescue => exception
        p "Please submit a number"
        retry
    end        
    

    nails << strike #add items to array. Can also do nails.push(strike)
    end

    total = nails.inject(0, :+)

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
        puts "This should never run."
    end

end