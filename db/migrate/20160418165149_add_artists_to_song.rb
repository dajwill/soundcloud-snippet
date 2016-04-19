class AddArtistsToSong < ActiveRecord::Migration
  def change
    add_column :songs, :artists, :text, array:true, default: []
  end
end
