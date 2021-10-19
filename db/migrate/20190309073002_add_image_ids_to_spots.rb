class AddImageIdsToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :image_ids, :integer, array: true, default: []
  end
end
