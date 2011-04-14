class Questionnaire < ActiveRecord::Base 
  has_and_belongs_to_many :questions
  has_many :surveys
  belongs_to :author, :class_name => "User"

  def question_ids=(questions)
    if(questions)
      questions = (questions || "").split(",")
      self.questions.clear
      questions.each do |id|
        self.questions << Question.find(id)
      end
    end
  end
end
