# Title: Exercise 4: Errors and Wrapping APIs
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 10/29/23
# Description: practice using error and boundary principles from Martin's Clean Code

# Exercise 4 Part 1 (Exception Handling)
# ref: https://stackify.com/rescue-exceptions-ruby/

class MentalState
  def auditable?
    # true if the external service is online, otherwise false
  end
  def audit!
    # raise an exception if the external service is offline
    unless auditable?
      raise ExternalServiceError, "External service is offline"
    end
  end
  def do_work
    # Amazing stuff...
  end
end

# create exception class to be raised if external service is offline (inherits from StandardError)
# ref: https://ruby-doc.org/core-2.5.1/StandardError.html
# ref: https://thixalongmy.haugiang.gov.vn/media/1175/clean_code.pdf
# Chapter 7 advices against "return code" to handle errors begin/rescue (aka try/except) instead
class ExternalServiceError < StandardError; end

def audit_sanity(bedtime_mental_state)
  begin
    new_state = bedtime_mental_state.audit!

    if new_state.ok?
      MorningMentalState.new(:ok)
    else
      MorningMentalState.new(:not_ok)
    end
  rescue ExternalServiceError => e
    puts "Error: #{e.message}"
  end
end

bedtime_mental_state = MentalState.new          # create object
new_state = audit_sanity(bedtime_mental_state)  # audit mental state




# Exercise 4 Part 2 (Don't Return Null / Null Object Pattern)

# define a NullMentalState class to represent a null-like object
# ref: Clean Code Chapter 7 (Don't Return Null / Null Object Pattern)
#      https://thixalongmy.haugiang.gov.vn/media/1175/clean_code.pdf
class NullMentalState
  def auditable?
    false
  end

  def audit!
    self
  end

  def do_work
    # do nothing
  end
end

class BedtimeMentalState < MentalState ; end

class MorningMentalState < MentalState ; end

def audit_sanity(bedtime_mental_state)
  if bedtime_mental_state.auditable?
    if bedtime_mental_state.audit!.ok?
      MorningMentalState.new(:ok)
    else 
      MorningMentalState.new(:not_ok)
    end
  else  # create null object instead if not auditable
    NullMentalState.new
  end
end

bedtime_mental_state = MentalState.new

new_state = audit_sanity(bedtime_mental_state)
new_state.do_work




# Exercise 4 Part 3 (Wrapping APIs)

require 'candy_service'

machine = CandyMachine.new
machine.prepare

if machine.ready?
  machine.make!
else
  puts "sadness"
end
