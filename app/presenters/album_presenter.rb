class AlbumPresenter
  def initialize(album)
    @album = album
  end

  def title_string
    "#{@album.title} (#{@album.year}) by #{@album.artist.name}"
  end
end
