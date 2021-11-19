class RemoveAttendingFromInvites < ActiveRecord::Migration[6.1]
  def change
    remove_column :invites, :attending, :boolean
  end
end
