class Song 
    def initialize(lyrics)
        @lyrics = lyrics        
    end

    def sing_me_a_song()
        @lyrics.each {|line| puts line}
    end
end

Whoomp_there_it_is = Song.new([
    "Here's a shovel",
    "Can you dig it"
])

a_b_cs = Song.new([
    "A, B, C, D",
    "E, F, G"
])

merry_christmas = [
    "We wish you a merry christmas",
    "We wish you a merry christmas",
    "We wish you a merry christmas",
    "And a happy new year"
]

Whoomp_there_it_is.sing_me_a_song()
a_b_cs.sing_me_a_song()

merry_christmas_lyrics = Song.new(merry_christmas)