class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.float :latitude
      t.float :longitude
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
