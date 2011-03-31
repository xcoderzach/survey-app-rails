class Question < ActiveRecord::Base
  has_and_belongs_to_many :questionaires
  has_many :responses
end
