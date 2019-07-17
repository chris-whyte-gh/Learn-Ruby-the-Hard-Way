=begin 
haunted house
Lobby, dining room, kitchen, bedroom, bathroom, outside, death

1. Create a death scene using an array
2. Create rooms and actions in each
3. The game will involve an engine that runs a map full of rooms or scenes.
4. Each room will print its own description when the player enters it and then tell the engine what room to run next out of the map."


You enter the lobby of a haunted house. You can choose the dining room, bedroom, kitchen, or bathroom to enter, or you can leave outside.
=end

class Scene
    def enter()
        puts "I haven't done anything here yet"
        puts "This enter method will be overwritten by a sub-class"
        exit(0) #exit code 0 means success, non-zero means failure
    end
end

class Engine #Runs a map full of rooms, need a way to run the engine, get the next scene, opening scene, and enter
    def initialize(scene_map)
        @scene_map = scene_map
    end

    def play()
    end
end


class Death
    @@responses = [ #Create a class variable for death that can be used throughout the program
        "You died",
        "You are dead",
        "How's that for being dead?",
        "Oh no, I'm so sorry for your loss"
    ]

    def enter() #Randomly assign a response when entering `death`
        puts @@responses[rand(0..(@@responses.length-1))] #We do it this way because we can always add more responses, so we don't want to do a range that says 0-4. 
        exit
    end
end

class Lobby

end

class Dining_Room
    
end

class Kitchen
    
end

class Bedroom
    
end

class Bathroom 
end

class Outside 
end

class Map
    #define a next scene and opening scene
    def initialize(start_scene)
        @start_scene = start_scene
    end

    def next_scene(scene_name)
        val = @@scenes[scene_name]
        return validate_object
    end

    def opening_scene()
        return next_scene(@start_scene)
    end
end