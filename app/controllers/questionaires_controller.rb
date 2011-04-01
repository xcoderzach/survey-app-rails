class QuestionairesController < ApplicationController
  respond_to :xml

  def index
    respond_with @questionaires = Questionaire.all
  end

  def show 
    respond_with @questionaire = Questionaire.where(:id => params[:id])
  end

  def create 
    respond_with @questionaire = Questionaire.create(params[:questionaire])
  end  

  def update
    respond_with @questionaire = Questionaire.update(params[:id], params[:questionaire])
  end   
end
