class Survey < ActiveRecord::Base
  belongs_to :questionaire
  belongs_to :owner, :class_name => "User"
  has_many :responses
end
