# Title: Exercise 3: Formatting and Objects
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 10/21/23
# Description: practice using formatting and object principles from Martin's Clean Code 

class Student

  MAX_COURSES = 5

  def remove_from_schedule(course, schedule, quarter_id)
    quarter = schedule.get_quarter(quarter_id)
    quarter.remove(course)
  end

  def add_to_schedule(course, schedule, quarter_id)
    quarter = schedule.get_quarter(quarter_id)

    if quarter.can_add_course?
      quarter.add(course)
    end
  end

end

class Schedule

  attr_accessor :quarters
  
  def initialize
    @quarters = []
  end

  def get_quarter(id)
    quarter[id]
  end

end

class Quarter
  attr_accessor :course_list

  def initialize
    @course_list = []
  end

  def remove(course)
    course_list.delete(course)
  end

  # ref: https://medium.com/@sologoubalex/boolean-methods-in-ruby-94a2e907e5ea
  def can_add_course?
    course_list.count < Student::MAX_COURSES
  end

  def add(course)
    course_list << course
  end

end

# ref: https://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby
class Course
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end