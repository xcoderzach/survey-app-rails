class ApplicationController < ActionController::Base
  rescue_from ActionController::RoutingError, :with => :route_not_found

  private
    
  def route_not_found 
    render :xml => {:surveyapp => {:error => "not_found"}}, :status => 404
  end
end
