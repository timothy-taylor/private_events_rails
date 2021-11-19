class AddAttendingToInvite < ActiveRecord::Migration[6.1]
  def change
    add_column :invites, :attending, :boolean
  end
end
