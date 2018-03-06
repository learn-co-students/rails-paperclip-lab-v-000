class Song < ActiveRecord::Base
  belongs_to :artist
<<<<<<< HEAD
  has_attached_file :album_cover, default_url: ':style/default.png', styles: { thumb: "100x100>" }
=======
  has_attached_file :album_cover, default_url: ":style/homer.gif", styles: { thumb: "100x100>" } 
>>>>>>> 5b97e45298528b1c344999d62b5794ef87b651b7
  validates_attachment_content_type :album_cover, content_type: /\Aimage\/.*\z/

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
