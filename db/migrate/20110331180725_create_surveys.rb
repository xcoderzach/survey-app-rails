class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.integer    :owner_id
      t.string     :owner_type
      t.integer    :questionaire_id
      t.timestamps
    end
  end

  def self.down
    drop_table :surveys
  end
end
