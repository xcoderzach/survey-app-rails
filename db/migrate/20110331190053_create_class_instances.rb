class CreateClassInstances < ActiveRecord::Migration
  def self.up
    create_table :class_instances do |t|
      t.string     :name
      t.integer    :instructor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :class_instances
  end
end
