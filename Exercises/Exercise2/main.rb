# Title: Exercise 2: Functions & Comments
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 10/15/23
# Description: practice using commenting and function principles from Martin's Clean Code 

# Name Mangler

# Mangle the name by reversing it and appending "Borg" 
def reverse_and_borg(name)
    first_last_name = name.split                    # into array [first, last]
    reversed_name = split_name.reverse              # then [last, first]
    reversed_name_components2 << "Borg"             # last [last, first, "Borg"]
    new_name = reversed_name_components.join(' ')   # return new name
end


name = "Johanna Jackson"

puts "New name: #{name}"
puts "New borg name: #{reverse_and_borg(name)}"