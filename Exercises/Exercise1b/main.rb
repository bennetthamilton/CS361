# Title: Exercise 1b: Names
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 10/7/23
# Description: practice using naming principles from Martin's Clean Code 
  
class Bike 

    AMOUNT = 10

    def initialize(height, weight, colot)
        @height = height
        @weight = weight
        @color = color
    end

    def get_color
        @color
    end

    def get_height
        @height
    end

    def change_weight(amount)
        @weight -= amount
    end
end