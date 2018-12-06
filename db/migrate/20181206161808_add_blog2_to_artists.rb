class AddBlog2ToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :blog2, :string
  end
end
