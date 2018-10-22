# require lets us gain access to methods written in another ruby file. However, directly calling a method from file B into file A is messy and can pollute the global namespace. We wrap methods in a module and can access methods through that module

#The name of the Ruby file does not have to correlate with the module name. We just have to `require` the .rb file to use the module.


module Ex25

#This function splits the argument at each space into an array of words.
def Ex25.break_words(stuff)
    words = stuff.split(' ')
    return words
end

#Sorts the array of words
def Ex25.sort_words(words)
    return words.sort
end

#Prints the first word after shifting (removes first element) it off.
# http://ruby-doc.org/core-2.5.3/Array.html#M002169
def Ex25.print_first_word(words)
    word = words.shift
    puts word
end

#Prints the last word after popping (removes last element) it off.
def Ex25.print_last_word(words)
    word = words.pop
    puts word
end

# Takes in a full sentence and returns the sorted words.
def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
end

# Prints the first and last words of a sentence.
def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
end

# Sorts the words then prints the first and last one.
def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
end

end