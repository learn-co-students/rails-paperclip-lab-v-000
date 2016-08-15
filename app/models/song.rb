class Song < ActiveRecord::Base
  belongs_to :artist
  has_attached_file :album_cover, default_url: ':app/homer.gif', styles: { thumb: "100x100>" }


  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
