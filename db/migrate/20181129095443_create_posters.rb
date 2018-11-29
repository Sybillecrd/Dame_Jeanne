class CreatePosters < ActiveRecord::Migration[5.2]
  def change
    create_table :posters do |t|
      t.string :picture_one
      t.string :picture_two
      t.string :picture_three
      t.referencess :project

      t.timestamps
    end
  end
end
