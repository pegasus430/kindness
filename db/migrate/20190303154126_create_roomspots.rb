class CreateRoomspots < ActiveRecord::Migration[5.2]
  def change
    create_table :roomspots do |t|
      t.integer :room_id
      t.integer :spot_id

      t.timestamps
    end
  end
end
