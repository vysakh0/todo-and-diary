class AddStatusToLearningSteps < ActiveRecord::Migration
  def change
    add_column :learning_steps, :status, :boolean
  end
end
