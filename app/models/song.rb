class Song < ActiveRecord::Base
  belongs_to :artist
  has_attached_file :album_cover, default_url: ':style/default-album-cover.jpg', styles: { thumb: "100x100>", original: "400x400" }
  validates_attachment_content_type :album_cover, content_type: /\Aimage\/.*\z/

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
