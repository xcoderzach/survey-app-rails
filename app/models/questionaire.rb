class Questionaire < ActiveRecord::Base 
  has_and_belongs_to_many :questions
  has_many :surveys

  def questions_attributes=(questions)
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
