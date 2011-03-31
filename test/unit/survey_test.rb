require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  should belong_to :questionaire
  should belong_to :owner
  should have_many :question_responses
end
