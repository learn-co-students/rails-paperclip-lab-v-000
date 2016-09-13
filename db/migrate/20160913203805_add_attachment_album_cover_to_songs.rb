class AddAttachmentAlbumCoverToSongs < ActiveRecord::Migration
  def up
    add_attachment :songs, :album_cover
  end

  def down
    remove_attachment :songs, :album_cover
  end
end
