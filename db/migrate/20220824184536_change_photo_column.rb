class ChangePhotoColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :guitars, :photo, :string
  end
end
