class AddAttachmentContentTypeToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :content_type
    end
  end

  def self.down
    remove_attachment :songs, :content_type
  end
end
