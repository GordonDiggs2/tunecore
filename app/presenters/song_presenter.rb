class SongPresenter
  def initialize(song)
    @song = song
  end

  def title_string
    "'#{@song.title}' by #{@song.artist.name} on #{@song.album.title}"
  end
end
