class Questionaires < ActiveRecord::Base 
  has_and_belongs_to_many :questions
  has_many :surveys
end
