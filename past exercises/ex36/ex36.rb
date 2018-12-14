require "./knife.rb"
require "./gun.rb"
require "./hammer.rb"

def start
    puts "You awake in a room without any doors or windows."
    puts "On the desk in front of you is a knife, a gun, and a hammer"
    puts "What do you choose"

    while true #without this loop, selecting anything other than knife, gun, or hammer results in the program ending
        choice = $stdin.gets.chomp.downcase
        if choice.include?("knife")
            knife
        elsif choice.include?("gun")
            gun
        elsif choice.include?("hammer")
            hammer
        else
            puts "Choose one of the items."
        end
    end
end

def dead(reason)
    puts reason + ". Sorry!"
    exit(0)
end

def injured(reason)
    puts reason + ". You're not dead, but you're not in good shape."
    puts "You look at the table again. The game is not over."
    start
end

start