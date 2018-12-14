class AddTwitterToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :twitter, :string
  end
end
