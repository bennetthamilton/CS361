# Title: Exercise 5: Unit Tests
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 11/5/23
# Description: testing classes in 'discussion.rb'
# Reference: https://en.wikibooks.org/wiki/Ruby_Programming/Unit_testing

require_relative "discussion"
require 'test/unit'

class TestDiscussion < Test::Unit::TestCase

  def setup
    @discussion = Discussion.new(title: 'fake', ...)
  end

  def teardown
    # nothing really
  end 

  def test_creation_with_title
    assert_instance_of(Discussion, @discussion)
  end

  def test_saving_discussion
    
  end

  def test_creating_roles
    
  end

  # add more tests as needed for other methods in the Discussion class
end

class TestUser < Test::Unit::TestCase

  def setup
    @user = User.new('user@example.com', 'password')
  end

  def teardown
    # nothing really
  end

  def test_creation_with_email_and_password
    assert_instance_of(User, @user)
  end

  def test_saving_user
    
  end

  def test_finding_user_by_index
    
  end

  # add more tests as needed for other methods in the User class
end

class TestLaunchDiscussionWorkflow < Test::Unit::TestCase

  def setup
    discussion = Discussion.new(title: "fake", ...)
    host = User.find(42)
    participants = "fake1@example.com\nfake2@example.com\nfake3@example.com"

    @workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)
  end

  def teardown
    # nothing really
  end

  def test_creation_with_discussion_host_and_participants
    assert_instance_of(LaunchDiscussionWorkflow, @workflow)
  end

  def test_running_workflow
    
  end

  def test_generating_participant_users_from_email_string
    
  end

  def test_valid_workflow
    
  end

  # add more tests as needed for other methods in the LaunchDiscussionWorkflow class
end
