class User < ActiveRecord::Base
  include Clearance::User

  belongs_to :group
  has_many :class_instances, :foreign_key => "instructor_id"
  has_many :surveys, :as => :owner
end
