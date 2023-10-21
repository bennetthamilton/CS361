CS361 - Exercise 3: Formatting and Objects

This exercise lets us practice some tiny but important principles from Martin's Clean Code.
Open your empty main.rb in your editor, and take the following code and paste it into your editor.

class Student




  MAX_COURSES = 5
  def remove_from_schedule(course, schedule, quarter_id)
    schedule.quarter[quarter_id].course_list.remove(course)
  end
  def add_to_schedule(course, schedule, quarter_id)
    quarter     = schedule.quarter[quarter_id]
    course_list = quarter.course_list
    max_courses = course_list.maximum_number_of_courses
    if max_courses < MAX_COURSES
        course_list.add(course)
    end
    end
end

























Now, modify the code to reflect the principles from Clean Code, chapters 5 and 6.