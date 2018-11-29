class RemovePicturesFromPosters < ActiveRecord::Migration[5.2]
  def change
    remove_column :posters, :picture_one, :string
    remove_column :posters, :picture_two, :string
    remove_column :posters, :picture_three, :string
  end
end
