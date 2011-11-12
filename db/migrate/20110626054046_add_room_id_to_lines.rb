class AddRoomIdToLines < ActiveRecord::Migration
  def self.up
    add_column :lines, :room_id, :integer
  end

  def self.down
    remove_column :lines, :room_id
  end
end
