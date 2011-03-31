class QuestionairesController < ApplicationController
  respond_to :xml

  def index
    @questionaires = Questionaire.all
    respond_to do |format|
      format.xml
    end

  end
end
