require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  should have_and_belong_to_many :questionaires
  should have_many :responses
end
