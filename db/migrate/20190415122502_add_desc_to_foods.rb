class AddDescToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :type, :string
    add_column :foods, :title, :string
    add_column :foods, :subtitle, :string
    add_column :foods, :desc, :string
  end
end
