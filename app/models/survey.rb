class Survey < ActiveRecord::Base
  belongs_to :questionnaire
  belongs_to :owner, :class_name => "User"
  has_many :responses

  def question=(questions) 
    if(questions)
      questions.each do |id, question|
        self.responses << Response.new(:question_id => id, :value => question["response"])
      end

    end
  end
end
