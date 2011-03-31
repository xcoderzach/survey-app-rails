class User < ActiveRecord::Base
  include Clearance::User

  belongs_to :group
  has_many :surveys, :as => :owner
end
