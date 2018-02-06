class Song < ActiveRecord::Base
  belongs_to :artist
  has_attached_file :album_cover, default_url: ':style/placeholder.png', styles: {thumb: "50x50>"}
  validates_attachment :album_cover,
    content_type: {content_type: ["image/jpeg", "image/gif", "image/png"]}

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
