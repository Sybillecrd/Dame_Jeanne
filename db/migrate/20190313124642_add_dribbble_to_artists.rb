class AddDribbbleToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :dribbble, :string
  end
end
