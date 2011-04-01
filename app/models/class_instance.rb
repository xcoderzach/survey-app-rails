class ClassInstance < ActiveRecord::Base
  has_many   :groups
  belongs_to :instructor, :class_name => "User", :conditions => {:type => "instructor"}
  has_many   :students, :through => "groups", :conditions => {:type => "student"}
end
