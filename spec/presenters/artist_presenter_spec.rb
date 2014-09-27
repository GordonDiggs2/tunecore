require 'spec_helper'

describe ArtistPresenter, :type => :model do
  before(:each) do
    @artist = Artist.last
    @presenter = ArtistPresenter.new(@artist)
  end

  describe "#title_string" do
    it "should be the name" do
      expect(@presenter.title_string).to eq(@artist.name)
    end
  end

end

