# Title: Exercise 2: Functions & Comments
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 10/15/23
# Description: practice using commenting and function principles from Martin's Clean Code 

# Name Mangler

# Mangle the name by reversing it and appending "Borg" 
def reverse_and_borg(name)                                      
    reversed_borg_name = (name.split.reverse << "Borg").join(" ")
end


name = "Johanna Jackson"

puts "New name: #{name}"
puts "New borg name: #{reverse_and_borg(name)}"