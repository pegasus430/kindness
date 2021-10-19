class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :title
      t.string :tel
      t.string :address
      t.string :service_hours

      t.timestamps
    end
  end
end
