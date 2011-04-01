require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  should have_and_belong_to_many :questionnaires
  should have_many :responses
end
