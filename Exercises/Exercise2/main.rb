# Title: Exercise 2: Functions & Comments
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 10/15/23
# Description: practice using commenting and function principles from Martin's Clean Code 

# Name Mangler

# Mangle the name by reversing it and appending "Borg" 
def reverse_and_borg(name)

    first_last_name = @name.split

    # Reverse the array of name components so the array is [last, first]
    reversed_name_components = split_name.reverse

    # Rejoin the array of name components
    new_name1 = reversed_name_components.join(' ')

    # Split the name into last and first in an array
    split_name2 = new_name1.split
    # Reverse the array of name components so the array is [last, first]
    reversed_name_components2 = split_name2.reverse
    # Add borg to the end of the array
    reversed_name_components2 << "Borg"
    # Rejoin the array of name components
    new_name2 = reversed_name_components2.join(' ')

  return name
end


name = "Johanna Jackson"

puts "New name: #{name}"
puts "New borg name: #{reverse_and_borg(name)}"