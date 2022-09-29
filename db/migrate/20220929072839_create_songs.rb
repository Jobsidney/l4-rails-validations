class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :duration
      t.integer :artist

      t.timestamps
    end
    add_foreign_key :artist, :artists, column: :artist, 
  end
end
