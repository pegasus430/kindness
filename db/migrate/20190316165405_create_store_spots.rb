class CreateStoreSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :store_spots do |t|
      t.integer :store_id
      t.integer :spot_id

      t.timestamps
    end
  end
end
