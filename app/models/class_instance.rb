class ClassInstance < ActiveRecord::Base
  has_many   :groups
  has_many   :students, :through => "groups", :conditions => {:type => "student"}
  belongs_to :instructor, :class_name => "User", :conditions => {:type => "instructor"}
end

