require 'test_helper'

class UserTest < ActiveSupport::TestCase
    should belong_to :group
    should have_many :classes
end
