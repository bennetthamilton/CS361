# Title: Exercise 3: Formatting and Objects
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 10/21/23
# Description: practice using formatting and object principles from Martin's Clean Code 

class Student

  MAX_COURSES = 5

  def remove_from_schedule(course, schedule, quarter_id)
    # remove course from schedule
  end

  def add_to_schedule(course, schedule, quarter_id)
    # add course to schedule
  end

end

class Schedule

  # should be a list containing quarter objects

end

class Quarter

  # should be a list containing courses

end

class Course
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
end