class CreateQuestionairesQuestions < ActiveRecord::Migration
  def self.up
    create_table :questionaires_questions, :id => false do |t|
      t.integer     :questionaire_id
      t.integer     :question_id
    end
  end

  def self.down
    drop_table :questionaires_questions
  end  
end
