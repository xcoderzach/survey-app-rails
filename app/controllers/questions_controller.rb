class QuestionsController < ApplicationController
  respond_to :xml

  def index
    respond_with @questions = Question.all
  end

  def show 
    respond_with @question = Question.where(:id => params[:id])
  end

  def create 
    respond_with @question = Question.create(params[:question])
  end  

  def update
    respond_with @question = Question.update(params[:id], params[:question])
  end  

  def destroy
    @question = Question.where(:id => params[:id]) 
    respond_with Question.destroy(@question)
  end  
end 
