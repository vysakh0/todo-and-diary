class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.belongs_to :user
      t.string :phone

      t.timestamps
    end
    add_index :people, :user_id
  end
end
