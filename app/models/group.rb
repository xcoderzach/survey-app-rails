class Group < ActiveRecord::Base
  has_many :users
  has_many :surveys, :as => :owner
  belongs_to :class_instance
>>>>>>> added class instances
end
