class Song < ActiveRecord::Base
  has_attached_file :album_cover, default_url: ':style/default.png', styles: { thumb: "100x100>" }

  validates_attachment_content_type :album_cover, content_type: /\Aimage\/.*\z/
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
