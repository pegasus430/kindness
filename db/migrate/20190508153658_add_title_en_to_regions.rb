class AddTitleEnToRegions < ActiveRecord::Migration[5.2]
  def change
    add_column :regions, :title_en, :string
  end
end
