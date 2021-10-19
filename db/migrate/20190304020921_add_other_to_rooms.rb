class AddOtherToRooms < ActiveRecord::Migration[5.2]
  def change
  	add_column :rooms, :title, :string
  	add_column :rooms, :desc, :string
  	add_column :rooms, :equipment, :string
  	add_column :rooms, :spec, :string


  end
end
