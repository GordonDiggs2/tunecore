class MusicSearchResultPresenter
  def initialize(result)
    @result = result
  end

  def title_string
    if presenter
      presenter.title_string
    else
      @result.to_s
    end + " (#{@result.class})"
  end

  def method_missing(method_name, *arguments, &block)
    if @result.respond_to?(method_name)
      @result.send(method_name, *arguments, &block)
    else
      super
    end
  end

  def respond_to?(method_name, include_private = false)
    @result.respond_to?(method_name) || super
  end

  private def presenter
    @presenter ||= if @result.is_a? Album
      AlbumPresenter.new(@result)
    elsif @result.is_a? Song
      SongPresenter.new(@result)
    elsif @result.is_a? Artist
      ArtistPresenter.new(@result)
    else
      nil
    end
  end
end
