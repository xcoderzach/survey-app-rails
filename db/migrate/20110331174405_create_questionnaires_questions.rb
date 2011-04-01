class CreateQuestionnairesQuestions < ActiveRecord::Migration
  def self.up
    create_table :questionnaires_questions, :id => false do |t|
      t.integer     :questionnaire_id
      t.integer     :question_id
    end
  end

  def self.down
    drop_table :questionnaires_questions
  end  
end
