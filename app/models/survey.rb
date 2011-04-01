class Survey < ActiveRecord::Base
  belongs_to :questionnaire
  belongs_to :owner, :class_name => "User"
  has_many :responses
  accepts_nested_attributes_for :responses
end
