class SurveysController < ApplicationController
  respond_to :xml

  def index
    if(params[:questionaire_id])
      respond_with @surveys = Survey.where(:questionaire_id => params[:questionaire_id])
    else 
      respond_with @surveys = Survey.all
    end
  end

  def show
    respond_with @survey = Survey.where(:id => params[:id])
  end 
end 
