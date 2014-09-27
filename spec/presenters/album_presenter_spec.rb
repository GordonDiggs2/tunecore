require 'spec_helper'

describe AlbumPresenter, :type => :model do
  before(:each) do
    @album = Album.last
    @presenter = AlbumPresenter.new(@album)
  end

  describe "#title_string" do
    it "should be the title, year, and artist" do
      expect(@presenter.title_string).to eq("#{@album.title} (#{@album.year}) by #{@album.artist.name}")
    end
  end

end
