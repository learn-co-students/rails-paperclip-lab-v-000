class Song < ActiveRecord::Base
  belongs_to :artist
  has_attached_file :album_cover, default_url: 'https://lh5.googleusercontent.com/-_B87VGbuz2E/TYmjdjwV7bI/AAAAAAAAFlA/EY-0D9_UL7c/s1600/AWESOME+FACEBOOK+PROFILE+PICTURES10.jpg', styles: { thumb: "100x100>" }
  validates_attachment_content_type :album_cover, content_type: /\Aimage\/.*\z/

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
