class CreatePoll < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.integer :author_id, null: false 
      t.string :title, limit: 30 ,null: false 
      t.timestamps
    end
    add_index :polls, :author_id, unique: true
  end
end
