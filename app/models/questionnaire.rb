class Questionnaire < ActiveRecord::Base 
  has_and_belongs_to_many :questions
  has_many :surveys
  belongs_to :author, :class_name => "User"

  def questions_attributes=(questions)
    if(questions)
      questions.each do |index, question|
        if(question["id"])
          q = Question.update(question["id"], question)
        else
          q = Question.new question
          q.save
        end
        self.questions.push(q)
      end
    end
  end
end
