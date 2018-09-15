#formatter is a variable, but what is the percent symbol
formatter = "%{first} %{second} %{third} %{fourth}"

#puts variable result in order
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
#puts 'one' 'two' in order
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
#puts true/false in order
puts formatter % {first: true, second: false, third: true, fourth: false}
#puts formatter variable 4x
puts formatter % { first: formatter, second: formatter, third: formatter, fourth: formatter}

#ok, so this applies the formatter variable format to the values provided here. Sort of like concatenating them
puts formatter % {
    first: "I had this thing.", 
    second: "That you could type up right.",
    third: "But it didn't sing.",
    fourth: "So I said goodnight."
}