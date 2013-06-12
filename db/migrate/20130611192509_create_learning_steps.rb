class CreateLearningSteps < ActiveRecord::Migration
  def change
    create_table :learning_steps do |t|
      t.text :step
      t.belongs_to :learn

      t.timestamps
    end
    add_index :learning_steps, :learn_id
  end
end
