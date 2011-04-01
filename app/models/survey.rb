class Survey < ActiveRecord::Base
  belongs_to :questionaire
  belongs_to :owner, :polymorphic => true
  has_many :responses
end
