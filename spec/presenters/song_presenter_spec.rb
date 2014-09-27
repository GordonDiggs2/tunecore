require 'spec_helper'

describe SongPresenter, :type => :model do
  before(:each) do
    @song = Song.last
    @presenter = SongPresenter.new(@song)
  end

  describe "#title_string" do
    it "should be the title, artist and album" do
      expect(@presenter.title_string).to eq("'#{@song.title}' by #{@song.artist.name} on #{@song.album.title}")
    end
  end

end


