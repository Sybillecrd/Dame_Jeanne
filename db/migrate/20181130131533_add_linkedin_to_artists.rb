class AddLinkedinToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :linkedin, :string
  end
end
