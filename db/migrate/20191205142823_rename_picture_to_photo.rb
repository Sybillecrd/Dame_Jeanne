class RenamePictureToPhoto < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :picture, :photo
  end
end
