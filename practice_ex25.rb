require "./ex25.rb"

module ex25

    def practice25.break_output(stuff)
        output = stuff.split(' ')
        return output
    end

    def practice25.sort_output(output)
        return output.sort
    end

    def practice25.print_first_word(output)
        first_word = output.shift
        puts first_word
    end

    def practice25.print_last_word(output)
        last_word = output.pop
        puts last_word
    end

end