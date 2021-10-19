class RemoveSomeColumnsFromStore < ActiveRecord::Migration[5.2]
  def change
    remove_column :stores, :title
    remove_column :stores, :address
    remove_column :stores, :show
    add_column :stores, :display, :boolean, default: true
  end
end
