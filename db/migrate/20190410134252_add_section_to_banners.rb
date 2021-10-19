class AddSectionToBanners < ActiveRecord::Migration[5.2]
  def change
  	add_column :banners, :section1_image_ids, :integer, array: true, default: []
  	add_column :banners, :section2_image_ids, :integer, array: true, default: []
  	add_column :banners, :section3_image_ids, :integer, array: true, default: []
  end
end
