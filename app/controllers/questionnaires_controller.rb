class QuestionnairesController < ApplicationController
  respond_to :xml

  def index
    respond_with @questionnaires = Questionnaire.all
  end

  def show 
    respond_with @questionnaire = Questionnaire.where(:id => params[:id])
  end

  def create 
    respond_with @questionnaire = Questionnaire.create(params[:questionnaire])
  end  

  def update
    respond_with @questionnaire = Questionnaire.update(params[:id], params[:questionnaire])
  end   
end
