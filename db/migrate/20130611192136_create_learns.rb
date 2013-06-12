class CreateLearns < ActiveRecord::Migration
  def change
    create_table :learns do |t|
      t.string :what
      t.text :how
      t.belongs_to :user
      t.boolean :status

      t.timestamps
    end
    add_index :learns, :user_id
  end
end
