class Group < ActiveRecord::Base
  has_many :students, :class_name => "user"
  has_many :surveys, :as => :owner
  belongs_to :class_instance
end
