class AddAttachmentAlbumCoverToSongs < ActiveRecord::Migration
  def self.up
    add_attachment :songs, :album_cover
  end

  def self.down
    remove_attachment :songs, :album_cover
  end
end
