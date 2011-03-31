require 'test_helper'

class QuestionairesTest < ActiveSupport::TestCase
  should have_and_belong_to_many(:questions)
  should have_many(:surveys)
end
