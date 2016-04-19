class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_id
      t.string :title
      t.string :album
      t.text :artist
      t.float :duration

      t.timestamps null: false
    end
  end
end
