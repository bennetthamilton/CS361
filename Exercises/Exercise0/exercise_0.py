# Title: Exercise 0: Self-Check
# Name: Bennett Hamilton
# Username: bennetthamilton
# Last Editted: 9/27/23
# Description: Print out the square root of integers between 1 and 1000 inclusive

# imports
import math

# initialize list 1-1000
# ref: https://www.entechin.com/how-to-create-an-array-of-numbers-1-to-n-in-python/
list = list(range( 1, 1000+1 ))

# loop through list using list comprehension
# square each element in list and replace with result
# ref: https://www.w3schools.com/python/python_lists_comprehension.asp
# ref: https://realpython.com/python-square-root-function/
squares = [math.sqrt(n) for n in list]

# print results
print(squares)