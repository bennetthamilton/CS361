# Title: Exercise 5: Classes
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 11/4/23
# Description: practice using class principles from Martin's Clean Code

# Exercise 5

class Discussion 

  def initialize(title, ...)
    @title = title
  end

  def save()
    # logic for saving discussion
  end

  def create_roles()
    # create discussion roles
  end

  # other necessary functions...
end

# ref: https://stackoverflow.com/questions/14532844/ruby-array-of-objects-classes
class User 

  @@users = Array.new
  attr_accessor :email, :password
  
  def self.all_instances
    @@users
  end

  def initialize(email, password)
    @email = email
    @password = password
  end

  def find(index)
    @@users[index]
  end

  def save():
    # save user to records
  end

  # other necessary functions...
end


class LaunchDiscussionWorkflow

  def initialize(discussion, host, participants_email_string)
    @discussion = discussion
    @host = host
    @participants_email_string = participants_email_string
    @participants = []
  end

  # Expects @participants array to be filled with User objects
  def run
    return unless valid?

    create_discussion
    create_discussion_roles
    @successful = true
  end

  def generate_participant_users_from_email_string
    return if @participants_email_string.blank?
    
    @participants_email_string.split.uniq.map do |email_address|
      User.new(email: email_address.downcase, password: Devise.friendly_token)
    end
  end

  def valid?
    # check if the workflow is valid
  end

  private

  def create_discussion
    @discussion.save
  end

  def create_discussion_roles
    @discussion.create_roles
  end

end


discussion = Discussion.new(title: "fake", ...)
host = User.find(42)
participants = "fake1@example.com\nfake2@example.com\nfake3@example.com"

workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)
workflow.generate_participant_users_from_email_string
workflow.run