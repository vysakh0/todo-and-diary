class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.belongs_to :person
      t.belongs_to :diary

      t.timestamps
    end
    add_index :chats, :person_id
    add_index :chats, :diary_id
  end
end
