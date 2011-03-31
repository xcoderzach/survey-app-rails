require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should belong_to :group
  should have_many :surveys
  should have_many :class_instances
end
