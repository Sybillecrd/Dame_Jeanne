class AddEnFieldsToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :job_en, :string
    add_column :artists, :speech_en, :string
  end
end
