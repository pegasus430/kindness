class AddImageIdsToFood < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :image_ids, :integer, array: true, default: []
  end
end
