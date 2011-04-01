class Group < ActiveRecord::Base
  has_many :students, :class_name => "User"
  belongs_to :class_instance
end
