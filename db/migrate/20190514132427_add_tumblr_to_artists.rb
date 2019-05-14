class AddTumblrToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :tumblr, :string
  end
end
