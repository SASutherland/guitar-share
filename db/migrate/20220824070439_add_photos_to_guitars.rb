class AddPhotosToGuitars < ActiveRecord::Migration[7.0]
  def change
    add_column :guitars, :photo, :string
  end
end
