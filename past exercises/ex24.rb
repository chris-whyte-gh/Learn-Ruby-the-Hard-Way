puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

#the <<END is a "heredoc".

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none
END

puts "-------------"
puts poem
puts "-------------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
    #variable inside function is temporary/local to the function, it does not extend out
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
#variables named in function can be assigned results of argument calculation
beans, jars, fuckbutter = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{fuckbutter} crates."

start_point = start_point / 10
puts "We can also do that this way:"
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_point)