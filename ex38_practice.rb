# Take a string
# Create an array
# Add items to it if less than a given amount
# Print it out

vacation_spots_string = "Brazil Japan Indonesia Congo China Russia Chile"
vacation_spots_array = vacation_spots_string.split(' ')

backup_vacation_spots_string = "Croatia Scotland Denmark Texas Alaska Canada Mexico"
backup_vacation_spots_array = backup_vacation_spots_string.split(' ')

puts "Here is where we want to go: #{vacation_spots_string}"
puts "We need some more vacation spots"
while vacation_spots_array.length < 10
    backup_one = backup_vacation_spots_array.pop()
    puts "Let's add #{backup_one}"
    vacation_spots_array.push(backup_one)
end

total_vacation_spots = vacation_spots_array.join(' ')
puts "Here's where we want to go: #{total_vacation_spots}" 


