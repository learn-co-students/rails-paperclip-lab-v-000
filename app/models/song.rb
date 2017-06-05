class Song < ActiveRecord::Base
  belongs_to :artist
  has_attached_file :album_cover, default_url: 'http://img.ulximg.com/image/740x493/gallery/1495738697_4e0c603960f0410758eb727ff9154eaf.jpg/1c209630614ee55901eff3fadbeca6eb/1495738697_10ad46b6ba371761b275b2be36f3f325.jpg', styles: { thumb: "100x100>" }
  validates_attachment_content_type :album_cover, content_type: /\Aimage\/.*\z/

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
  

end
