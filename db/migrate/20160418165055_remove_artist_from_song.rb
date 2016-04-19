class RemoveArtistFromSong < ActiveRecord::Migration
  def change
    remove_column :songs, :artist, :text
  end
end
