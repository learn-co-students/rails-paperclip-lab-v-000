class AddAttachmentAlbumCoverToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :album
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :songs, :album
    remove_attachment :songs, :cover
  end
end
