class Song
    attr_reader :lyrics, :singer

    def initialize(lyrics, singer)
        @lyrics = lyrics
        @singer = singer
    end

    def sing_me_a_song()
        @lyrics.each { |line| puts line}
    end

    def define_singer()
        puts "The singer of this song is {@singer}"
    end

    def get_line(line_number)
        line = @lyrics[line_number-1]
        puts "Lyric #{line_number} is #{line}"
    end
end

fuck_shit_up = Song.new([
    "this is the first line",
    "whoa, here comes the second",
    "ah fuck, here is third"
],["Me mother fucker"]
)

puts fuck_shit_up.singer
puts fuck_shit_up.lyrics