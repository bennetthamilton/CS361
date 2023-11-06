# Title: Exercise 5: Unit Tests
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 11/5/23
# Description: testing classes in 'discussion.rb'
# Reference: https://en.wikibooks.org/wiki/Ruby_Programming/Unit_testing

require_relative "discussion"
require 'test/unit'

class TestDiscussion < Test::Unit::TestCase
  def test_creation_with_title
    
  end

  def test_saving_discussion
    
  end

  def test_creating_roles
    
  end

  # add more tests as needed for other methods in the Discussion class
end

class TestUser < Test::Unit::TestCase
  def test_creation_with_email_and_password
    
  end

  def test_saving_user
    
  end

  def test_finding_user_by_index
    
  end

  # add more tests as needed for other methods in the User class
end

class TestLaunchDiscussionWorkflow < Test::Unit::TestCase
  def test_creation_with_discussion_host_and_participants
    
  end

  def test_running_workflow
    
  end

  def test_generating_participant_users_from_email_string
    
  end

  def test_valid_workflow
    
  end

  # add more tests as needed for other methods in the LaunchDiscussionWorkflow class
end
