class RemoveColumnsFromSpots < ActiveRecord::Migration[5.2]
  def change
    remove_column :spots, :title
    remove_column :spots, :address
    remove_column :spots, :service_hours
  end
end
