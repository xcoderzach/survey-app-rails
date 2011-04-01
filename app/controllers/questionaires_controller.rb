class QuestionairesController < ApplicationController
  respond_to :xml

  # examples:
  # GET /questionaires.xml
  def index
    respond_with @questionaires = Questionaire.all
  end

  # examples:
  # GET /questionaires/1.xml
  def show 
    respond_with @questionaire = Questionaire.where(:id => params[:id])
  end

  # examples:
  # POST /questionaires.xml
  def create 
    respond_with @questionaire = Questionaire.create(params)
  end  
end
