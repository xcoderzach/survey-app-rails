class QuestionsController < ApplicationController
  respond_to :xml

  def index
    respond_with @questions = Question.all
  end
 
end 
