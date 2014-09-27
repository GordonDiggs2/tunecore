require 'spec_helper'

describe MusicSearch, :type => :model do
  describe ".cache_key" do
    it "should include updated_at for models" do
      expect(MusicSearch.cache_key).to eq(['MusicSearch', Album.maximum(:updated_at).to_i, Artist.maximum(:updated_at).to_i, Song.maximum(:updated_at).to_i].join('/'))
    end
  end
end

