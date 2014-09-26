require 'spec_helper'

describe Album, :type => :model do
  %w[artist_id title year].each do |attr|
    it "should require a #{attr}" do
      album = Album.new
      expect(album).not_to be_valid
      expect(album.errors[attr]).to eq(["can't be blank"])
    end
  end

  it "should have many songs" do
    expect(Album.reflect_on_association(:songs).macro).to eq(:has_many)
  end

  it "should belong_to artist" do
    expect(Album.reflect_on_association(:artist).macro).to eq(:belongs_to)
  end
end

