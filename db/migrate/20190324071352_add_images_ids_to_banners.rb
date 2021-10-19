class AddImagesIdsToBanners < ActiveRecord::Migration[5.2]
  def change
    add_column :banners, :image_ids, :integer, array: true, default: []
  end
end
