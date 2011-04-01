class UsersController < ApplicationController
  respond_to :xml

  def index
    respond_with @users = User.all
  end

  def create
    respond_with @user = User.create(params[:user])
  end

end
