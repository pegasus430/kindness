class AddStoreIdToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :store_id, :integer
  end
end
