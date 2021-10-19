class AddSortToFood < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :sort, :integer
  end
end
