require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  should belong_to :class_instance
  should have_many :students
end
