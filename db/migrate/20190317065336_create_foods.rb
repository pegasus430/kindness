class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.integer :store_id
      t.timestamps
    end
  end
end
