class AddKindToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :food_type, :integer, default: 0
  end
end
