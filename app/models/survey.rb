class Survey < ActiveRecord::Base
  belongs_to :questionaire
  belongs_to :owner, :polymorphic => true
  has_many :question_responses, :through => :questions
end
