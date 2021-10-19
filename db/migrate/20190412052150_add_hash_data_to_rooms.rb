class AddHashDataToRooms < ActiveRecord::Migration[5.2]
  def change
  	add_column :rooms, :hash_data, :string, default: ''
  end
end
