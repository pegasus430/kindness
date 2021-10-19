class AddImageIdsToStores < ActiveRecord::Migration[5.2]
  def change
  	add_column :stores, :cover_image_ids, :integer, array: true, default: []
  	add_column :stores, :traffic_image_ids, :integer, array: true, default: []
  end
end
