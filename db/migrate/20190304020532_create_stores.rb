class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.references :region, foreign_key: true
      t.string :title
      t.string :address
      t.integer :seq
      t.boolean :show

      t.timestamps
    end
  end
end
