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
    assert_nothing_raised { @discussion.save }
  end

  def test_creating_roles
    assert_nothing_raised { @discussion.create_roles }
  end

  # add more tests as needed for other methods in the Discussion class
end

class TestUser < Test::Unit::TestCase

  def setup
    @user = User.new('user@example.com', 'password')
    @user1 = User.new('user1@example.com', 'password1')
    @user2 = User.new('user2@example.com', 'password2')
  end

  def teardown
    # nothing really
  end

  def test_creation_with_email_and_password
    assert_instance_of(User, @user)
  end

  def test_saving_user
    assert_nothing_raised { @user.save }
  end

  def test_finding_user_by_index
    assert_includes(User.all_instances, @user1)
    assert_includes(User.all_instances, @user2)
    assert_equal(@user1, User.find(0))
    assert_equal(@user2, User.find(1))
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
    assert_nothing_raised { @workflow.run }
  end

  def test_no_errors_generating_participant_users_from_email_string
    assert_nothing_raised { @workflow.generate_participant_users_from_email_string }
  end

  def test_generating_user_from_email_has_correct_email_member
    @workflow.generate_participant_users_from_email_string

    generated_users = User.all_instances.last(participants_email_string.split("\n").size)
    
    participants_emails = participants_email_string.split("\n").map(&:strip)
    generated_users_emails = generated_users.map(&:email)
    
    assert_equal(participants_emails, generated_users_emails)
  end  

  def test_generating_user_from_email_has_correct_password_member
    @workflow.generate_participant_users_from_email_string
  
    generated_users = User.all_instances.last(participants_email_string.split("\n").size)
    
    participants_password = Devise.friendly_token   # NOTE: not sure if this would work but the idea is there
    generated_users_passwords = generated_users.map(&:password)
    
    assert_equal(participants_password, generated_users_passwords.uniq)
  end

  def test_valid_workflow
    assert_equal(true, @workflow.valid?)
  end

  # add more tests as needed for other methods in the LaunchDiscussionWorkflow class
end
