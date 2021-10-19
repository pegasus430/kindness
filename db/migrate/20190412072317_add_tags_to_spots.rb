class AddTagsToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :tags, :string, array: true, default: []
  end
end