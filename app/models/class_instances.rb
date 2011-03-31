class ClassInstance < ActiveRecord::Base
  has_many  :students,    :class_name => "user", :conditions => {:type => "student"}
  belongs_to :instructor, :class_name => "user", :conditions => {:type => "instructor"}
end

