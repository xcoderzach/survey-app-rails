class QuestionairesController < ApplicationController
  respond_to :xml

  def index
    respond_with @questionaires = Questionaire.all
  end
end
