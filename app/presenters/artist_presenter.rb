class ArtistPresenter
  def initialize(artist)
    @artist = artist
  end

  def title_string
    @artist.name
  end
end
