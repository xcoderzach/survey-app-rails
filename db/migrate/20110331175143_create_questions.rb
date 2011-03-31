class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string     :type
      t.text       :text
      t.integer    :max_selections
      t.integer    :min_selections
      t.text       :options
      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
