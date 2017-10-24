class Song < ActiveRecord::Base
  belongs_to :artist
  has_attached_file :album_cover, default_url: 'https://lh4.ggpht.com/O38bLeNrvFvfc_ZJObmtkGRll5sl1WFPuyyCw6QP3Rn7CE18E6Pb3v2wfdB3Edl2qbw=h310', styles: { thumb: "100x100>" }
  validates_attachment_content_type :album_cover, content_type: /\Aimage\/.*\z/



  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
