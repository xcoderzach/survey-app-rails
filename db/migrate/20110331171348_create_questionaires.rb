class CreateQuestionaires < ActiveRecord::Migration
  def self.up
    create_table :questionaires do |t|
      t.string     :title
      t.timestamps
    end
  end

  def self.down
    drop_table :questionaires
  end 
end
