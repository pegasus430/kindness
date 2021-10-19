class AddImageTypeToBanner < ActiveRecord::Migration[5.2]
  def change
    add_column :banners, :image_type, :string, default: 0
  end
end
