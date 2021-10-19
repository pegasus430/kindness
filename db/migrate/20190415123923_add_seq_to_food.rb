class AddSeqToFood < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :seq, :integer
  end
end
