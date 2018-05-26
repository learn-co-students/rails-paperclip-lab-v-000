class AddAttachmentAlbumCoverContentTypeToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :album_cover_content_type
    end
  end

  def self.down
    remove_attachment :songs, :album_cover_content_type
  end
end
