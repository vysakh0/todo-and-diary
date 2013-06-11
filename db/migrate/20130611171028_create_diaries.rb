class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.belongs_to :user
      t.text :description

      t.timestamps
    end
    add_index :diaries, :user_id
  end
end
