class RemoveTitleDescriptionFromNews < ActiveRecord::Migration[5.2]
  def change
    remove_column :news, :title
    remove_column :news, :description
  end
end
