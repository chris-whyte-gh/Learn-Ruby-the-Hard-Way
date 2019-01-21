require "./oop.rb"
require 'time'

class Actor

    def alive?
        death_date.nil?
    end

    def age
        if alive?
            a = Time.now - Time.parse(birth_date)
        else
            a = Time.parse(death_date) - Time.parse(birth_date)
        end

        return (a / 60 / 60 / 24 / 365).to_i
    end
end

an_actor = Actor.new
an_actor.name = "Paul Newman"
an_actor_birth_date = "1/26/1925"
an_actor_death_date = "12/26/2008"

puts an_actor.age