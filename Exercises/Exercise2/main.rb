# Title: Exercise 2: Functions & Comments
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 10/15/23
# Description: practice using commenting and function principles from Martin's Clean Code 

# Name Mangler

# Mangle the name by reversing it and appending "Borg" 
def reverse_and_borg(name)
    first_last_name = name.split                    # into array [first, last]
    reversed_name = first_last_name.reverse         # [last, first]
    reversed_borg_name << "Borg"                    # [last, first, "Borg"]
    new_name = reversed_name_components.join(' ')   # return new name
end


name = "Johanna Jackson"

puts "New name: #{name}"
puts "New borg name: #{reverse_and_borg(name)}"