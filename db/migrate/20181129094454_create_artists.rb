class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :job
      t.string :speech
      t.string :blog

      t.timestamps
    end
  end
end
