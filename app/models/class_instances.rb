class ClassInstances < ActiveRecord::Base
  has_many  :students,    :class_name => "user", :condtions => {:type => "student"}
  belongs_to :instructor, :class_name => "user", :condtions => {:type => "instructor"}
end

