class AddFacebookToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :facebook, :string
  end
end
