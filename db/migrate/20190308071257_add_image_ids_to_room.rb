class AddImageIdsToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :image_ids, :integer, array: true, default: []

    create_table :images do |t|
      t.string  :src
      t.integer :crop_x
      t.integer :crop_y
      t.integer :crop_w
      t.integer :crop_h

      t.timestamps
    end
  end
end
