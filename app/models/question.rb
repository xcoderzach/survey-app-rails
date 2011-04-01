class Question < ActiveRecord::Base
  has_and_belongs_to_many :questionaires
  has_many :responses

  def options
    options = read_attribute :options
    options.split "|"
  end

end
