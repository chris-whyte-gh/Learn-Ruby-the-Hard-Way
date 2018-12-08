module Bride
    
def Bride.start(item)
    puts "You picked the #{item}"

    if ["dress","wedding dress"].include?(item)
        Bride.dress_track()
    elsif item.include?("necklace")
        Bride.necklace_track()
    end
end

Bride.dress_track
    puts "You put on the dress"
    exit(0)
end

Bride.necklace_track
    puts "You put on the necklace"
    exit(0)
end

end

