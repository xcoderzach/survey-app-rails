class ClassInstancesController < ApplicationController
  respond_to :xml

  def index
    respond_with @class_instances = ClassInstance.all
  end

  def show 
    respond_with @class_instance = ClassInstance.where(:id => params[:id])
  end

  def create 
    respond_with @class_instance = ClassInstance.create(params[:class_instance])
  end  

  def update
    respond_with @class_instance = ClassInstance.update(params[:id], params[:class_instance])
  end   
end 
