class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :cover
      t.integer :seq
      t.integer :store_id

      t.timestamps
    end
  end
end
