class UsersController < ApplicationController
  respond_to :xml

  def index
    respond_with @users = User.all
  end

  def show
    respond_with @user = User.where(:id => params[:id])
  end

  def update
    respond_with @user = User.update(params[:id], params[:user])
  end

  def create
    respond_with @user = User.create(params[:user]), :action => :show
  end

  def show
    @user = User.where(:id => params[:id])
    respond_with User.destroy(@user)
  end
 
end
