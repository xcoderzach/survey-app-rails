class TestsController < ApplicationController
  respond_to :xml

  def index
    Survey.delete_all
    Question.delete_all
    Questionnaire.delete_all
    Survey.delete_all
  end
end
