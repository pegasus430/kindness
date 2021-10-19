class AddCoverImageIdsToRooms < ActiveRecord::Migration[5.2]
  def change
  	add_column :rooms, :cover_image_ids, :integer, array: true, default: []
  end
end
