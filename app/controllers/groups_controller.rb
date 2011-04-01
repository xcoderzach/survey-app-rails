class GroupsController < ApplicationController
  respond_to :xml

  def index
    if(params[:class_instance_id])
      respond_with @groups = Group.where(:class_instance_id => params[:class_instance_id])
    else 
      respond_with @groups = Group.all
    end
  end

  def show
    respond_with @group = Group.where(:id => params[:id])
  end 

  def create
    respond_with @group = Group.create(params[:group])
  end 

  def update
    respond_with @group = Group.update(params[:id], params[:group])
  end 
end 
