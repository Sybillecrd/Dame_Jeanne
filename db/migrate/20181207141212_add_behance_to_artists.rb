class AddBehanceToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :behance, :string
  end
end
