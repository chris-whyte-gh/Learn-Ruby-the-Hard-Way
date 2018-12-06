=begin
 Choose your own adventure story
 
 A person walks in a forest and has three doors they can choose from:
 Door 1 leads to the elves
 Door 2 leads to the wolves
 Door 3 leads to the fog

 With the elves, the person can make a wish. If they wish for money, they become poor. If they wish for eternal life, they die. If they wish for world peace, war breaks out. If they wish for something else, they lose a limb. If they don't make a wish, they go back to the beginning.

 With the wolves, the person can also make a wish. If they wish for money, they become rich. If they wish for eternal life, they become immortal. If they wish for world peace, nations put down their guns. If they wish for something else, they get a kiss on the lips by a wolf. If they don't make a wish, they are prompted to make a wish again.

 With the fog, the person can make a wish. If they make a wish, they die. If they don't make a wish, they are asked to make a wish again.
    
=end

def start
    puts "You walk in a forest that has three doors to choose from:
    Door 1 leads to elves
    Door 2 leads to wolves
    Door 3 leads to fog
    Which door do you choose (1, 2, 3)"
        #while true
        door = $stdin.gets.chomp
            if door == "1"
                elves
            elsif door == "2"
                wolves
            elsif door == "3"
                fog
            else
                puts "Please choose 1, 2, or 3"
                start
            end
        #end
end

def elves
    puts "The elves want you to make a wish. You can wish for money, eternal life, or world peace. What do you wish for?"
    wish = $stdin.gets.chomp
end

def wolves
    puts "The wolves want you to make a wish. You can wish for money, eternal life, or world peace. What do you wish for?"
end

def fog
    puts "You are in a fog. What do you wish for?"
end

def wish
    if wish.include? "money"
    money
    elsif wish.include? "life"
    eternal_life
    elsif wish.include? "peace"
    world_peace
    else 
    elves
    end
end

def money
    puts "You become poor"
end

def eternal_life
    puts "You die"
end

def world_peace
    puts "War breaks out"
end

def another_wish
    puts "No more wishes"
end

def no_wish
    puts "You don't get a wish"
end

start