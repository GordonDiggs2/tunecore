require 'spec_helper'

describe MusicSearchResultPresenter, :type => :model do
  before do
    @song = Song.last
    @album = Album.last
    @artist = Artist.last
  end

  [Song, Album, Artist].each do |klass|
    describe "with a #{klass}" do
      before do
        @obj = klass.last
        @presenter = MusicSearchResultPresenter.new(@obj)
        @obj_presenter = "#{klass}Presenter".constantize.new(@obj)
      end

      describe "#title_string" do
        it "should equal the presenter's title string" do
          expect(@presenter.title_string).to eq(@obj_presenter.title_string + " (#{@obj.class})")
        end
      end
    end
  end

  describe "#respond_to" do
    it "should pass the method through to the result" do
      @presenter = MusicSearchResultPresenter.new(@song)
      expect(@song).to respond_to(:artist)
      expect(@presenter).to respond_to(:artist)
    end
  end
end
