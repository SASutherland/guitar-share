class AddMorePhotosToGuitars < ActiveRecord::Migration[7.0]
  def change
    add_column :guitars, :url, :string
  end
end
