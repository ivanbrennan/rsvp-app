class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
    add_index :invites, :event_id
    add_index :invites, :user_id
  end
end
