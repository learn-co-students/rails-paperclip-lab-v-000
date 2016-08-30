class Song < ActiveRecord::Base
  belongs_to :artist
  has_attached_file :album_cover, default_url: ':style/vinyl-record-1-1024-768-descibel-radio-1TJlqv-clipart.png', styles: { thumb: "100x100>" }
  validates_attachment_content_type :album_cover, content_type: /\Aimage\/.*\Z/

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
