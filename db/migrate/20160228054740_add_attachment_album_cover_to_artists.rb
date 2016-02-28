class AddAttachmentAlbumCoverToArtists < ActiveRecord::Migration
  def self.up
    change_table :artists do |t|
      t.attachment :album_cover
    end
  end

  def self.down
    remove_attachment :artists, :album_cover
  end
end
