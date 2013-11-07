class AddAttendingToInvites < ActiveRecord::Migration
  def change
    add_column :invites, :attending, :boolean, default: false
  end
end
