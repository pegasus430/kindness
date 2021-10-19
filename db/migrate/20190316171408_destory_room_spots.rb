class DestoryRoomSpots < ActiveRecord::Migration[5.2]
  def change
    drop_table :roomspots
  end
end
