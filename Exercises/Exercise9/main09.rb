# Title: Exercise 9: Interfaces
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 12/2/23
# Description: modify given code to practice principles of OOD and interfacing

# common interface for bike classes
# ref: https://www.geeksforgeeks.org/ruby-module/
module Bike
  def prepare
    raise NotImplementedError, "#{self.class} must implement prepare method"
  end
end

class Employee

  # def prepare(bike)
  #   if bike.class == BmxBike
  #     bike.clean
  #   elsif bike.class == RoadBike
  #     bike.lubricate_gears
  #   elsif bike.class == MountainBike
  #     bike.adjust_suspension
  #   elsif bike.class == Tricycle
  #     bike.adjust_seat
  #   else
  #     puts 'Uhh, boss, I dunno how to do that.'
  #   end
  # end
  def prepare(bike)
    bike.prepare
  rescue NotImplementedError => e
    puts "#{e.message}"
  end

end

class BmxBike
  include Bike

  def prepare
    clean
  end

  private

  def clean
    puts 'Cleaning...'
  end

end

class RoadBike
  include Bike

  def prepare
    lubricate_gears
  end

  private

  def lubricate_gears
    puts 'Lubricating gears...'
  end

end

class MountainBike
  include Bike

  def prepare
    adjust_suspension
  end

  private

  def adjust_suspension
    puts 'Adjusting suspension...'
  end

end

class Tricycle
  include Bike

  def prepare
    adjust_seat
  end

  private

  def adjust_seat
    puts 'Adjusting seat...'
  end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end