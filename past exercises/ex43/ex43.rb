#Let's start with a scene

class Scene
    def enter()
        puts "You enter the room"
        exit(0) #exit with success code '0'
        #can also exit(1) with a failure code
    end
end

class Engine
    def initialize(scene_map)
        @scene_map = scene_map #The Engine class is initialized with a scene map
    end

    def play()
        current_scene = @scene_map.opening_scene() #current scene is the scene map variable calling the opening scene method, of class Map
        last_scene = @scene_map.next_scene('finished') #last scene is calling the next_scene method on the scene_map variable, with a parameter of finished

        while current_scene != last_scene #while current scene is not the last scene
            next_scene_name = current_scene.enter() #next_scene_name is the enter method on the current scene
            current_scene = @scene_map.next_scene(next_scene_name) #current_scene is the next_scene method on scene map, calling the next scene name parameter
        end

        #print out the last scene
        current.scene.enter()
    end
end

class Map

    @@scenes = {
        'central_corridor' => CentralCorridor.new(),
        'laser_weapon_armory' => LaserWeaponArmory.new(),
        'escape_pod' => EscapePod.new(),
        'the_bridge' => TheBridge.new(),
        'death' => Death.new(),
        'finished' => Finished.new(),
    }

    def initialize(start_scene) #initialize inherits from the class object
        @start_scene = start_scene
    end

    def next_scene(scene_name)
        val = @@scenes[scene_name]
        return val
    end

    def opening_scene()
        return next_scene(@start_scene)
    end
end

class Death < Scene
    @@responses = [ #@@ is a class variable, can apply across any class in this program
        "Well, you're dead",
        "Now you've done it",
        "This is the end, my friend"
    ]
    
    def enter() 
        puts @@responses[rand(0..(@@responses.length-1))] #why doesn't rand use 1-3, since only 3 responses? What if I want to add more, have to keep changing 3
        #length returns the number of elements in the array, which is 3
        exit(1)
    end
end

class CentralCorridor < Scene
    def enter()
        puts "This the start of the game. You are a space captain on a ship."
        puts "There are aliens attacking your ship, and now they have boarded."
        puts "\n"
        puts "Your job is to get a bomb and blow up the ship and all the aliens inside of it."
        puts "You run to the Central Corridor and see an alien ready to shoot you."
        puts "You can shoot, run, or tell a joke. What do you do?"
        print "> "

        action = $stdin.gets.chomp

        if action == "shoot"
            puts "You shoot the alien"
            puts "He takes the bullet and throws it at you. Killing you"
            return 'death' #return stops the flow of a method and returns a specific value
            
        elsif action == "run"
            puts "You run away from the alien"
            puts "He shoots you and you die"
            return 'death'
        
        elsif action == "tell a joke"
            puts "You tell a joke"
            puts "It goes over swimmingly"
            puts "The alien moves out of the way from laughing too hard"
            puts "You proceed through the corridor to the weapon armory"
            return 'laser_weapon_armory'

        else
            puts "I don't understand, please make a choice."
            puts "\n"   
            sleep(1)
            return 'central_corridor' #return brings us back to the central corridor Class

        end
    end
end

class LaserWeaponArmory < Scene
    def enter()
        puts "You dive into the Laser Weapon Armory."
        puts "You see the neutron bomb and there is a keylock."
        puts "The code is 3 digits."
        puts "You have 10 tries to open it"

        code = "#{rand(1..2)}#{rand(1..2)}#{rand(1..2)}"
        print "[keypad] > "

        guess = $stdin.gets.chomp
        guesses = 1 #at this point, the user has made 1 guess. We changed this from 0 to 1

        while guess != code && guesses < 10
            puts "Fucking Wrong!"
            guesses += 1
            print "[keypad] > "
            guess = $stdin.gets.chomp
        end

        if guess == code
            puts "The code opens and the neutron bomb is free."
            puts "You grab it and head to the bridge"
            return 'the_bridge'
        else
            puts "You hear the last click. You were wrong"
            return 'death'
            
        end
    end
end

class TheBridge < Scene
    def enter()
        puts "You enter the bridge with the bomb."
        puts "You find 5 fucking aliens"
        puts "What do you do: throw the bomb, or lay the bomb down?"

        action = $stdin.gets.chomp

        if action == "throw the bomb"
            puts "You throw the bomb"
            puts "The aliens catch it, disarm it, and kill you"
            return 'death'
        elsif action == "lay the bomb"
            puts "You lay the bomb down"
            puts "The aliens run to you, but you shoot one in the leg. He falls and trips the other ones."
            puts "You back out of the door and shoot the bomb so it starts fizzling."
            puts "The timer counts down 5 minutes. You head to the escape pod"
            return 'escape_pod'
            
        else
            puts "Make a choice"
            return 'the_bridge'
        end
    end
end

class EscapePod < Scene
    def enter()
        puts "You make it to the escape pod chambers, but notice 5 ships."
        puts "Some could be broken. Which one do you choose?"

        good_pod = rand(1..5) #Randomly assign a good pod number
        print "[pod #]> " #print pod selection prompt
        guess = $stdin.gets.chomp #ask user to guess pod number and see if it matches random good pod number

        if guess == good_pod
            puts "You pick %s the only pod that works!" % guess
            puts "Great job! Now fly boy/girl, and get outta here!"
            return 'finished'
        elsif guess != good_pod
            puts "You pick pod %s" % guess
            puts "You launch the pod, but it quickly bounces against the escape corridor"
            puts "Oh no, go back! Back!"
            puts "It's too late, its ejecting you to space"
            puts "The ship is blowing up, you are stuck in the corridor"
            return 'death'
        else
            puts "Quick! Pick one!"
            return 'escape_pod'
        end
    end
end

class Finished < Scene
    def enter()
        puts "You won! Great job!"
    end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()

