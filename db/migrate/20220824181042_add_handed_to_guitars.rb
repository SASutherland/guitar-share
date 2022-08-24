class AddHandedToGuitars < ActiveRecord::Migration[7.0]
  def change
    add_column :guitars, :handed, :string
  end
end
