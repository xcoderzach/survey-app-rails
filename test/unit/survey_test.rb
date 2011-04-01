require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  should belong_to :questionnaire
  should belong_to :owner
  should have_many :responses
end
