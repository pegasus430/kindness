class AddImageIdsToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :image_ids, :integer, array: true, default: []
  end
end
