CS361 - Exercise 9: Interfaces

Take the following code, paste it into an editor, and save the file as main09.rb.

class Employee

  def prepare(bike)
    if bike.class == BmxBike
      bike.clean
    elsif bike.class == RoadBike
      bike.lubricate_gears
    elsif bike.class == MountainBike
      bike.adjust_suspension
    elsif bike.class == Tricycle
      bike.adjust_seat
    else
      puts 'Uhh, boss, I dunno how to do that.'
    end
  end

end

class BmxBike

  def clean
    puts 'Cleaning...'
  end

end

class RoadBike

  def lubricate_gears
    puts 'Lubricating gears...'
  end

end

class MountainBike

  def adjust_suspension
    puts 'Adjusting suspension...'
  end

end

class Tricycle

  def adjust_seat
    puts 'Adjusting seat...'
  end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end

Now, modify the code to reflect the principles from POODR chapter 4.