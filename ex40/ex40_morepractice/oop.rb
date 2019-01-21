class Actor
    attr_accessor :name, :age, :sex, :birth_date, :birthplace, :filmography
end

an_Actor = Actor.new
an_actor_name = "Michael J. Fox"
an_actor_age = 45
an_actor_filmography = ["Back to the future 1", "Back to the future 2", "Back to the future 3"]

puts an_Actor.inspect

class Actress < Actor
end

an_actress = Actress.new
an_actress_name = "Catherine Keener"
an_actress_age = 52
an_actress_filmography = ["Being John Malkovich", "Capote"]

puts an_actress.inspect
    