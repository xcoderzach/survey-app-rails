require 'test_helper'

class ClassInstanceTest < ActiveSupport::TestCase
  should belong_to :instructor
  should have_many :students
  should have_many :groups
end
