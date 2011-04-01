class QuestionsController < ApplicationController
  respond_to :xml

  def index
    respond_with @questions = Question.all
  end

  def show 
    respond_with @question = Question.where(:id => params[:id])
  end
end 
