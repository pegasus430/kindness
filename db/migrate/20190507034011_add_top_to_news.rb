class AddTopToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :top, :boolean, default: false
  end
end
