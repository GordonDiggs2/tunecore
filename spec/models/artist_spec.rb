require 'spec_helper'

describe Artist, :type => :model do
  it "should require a name" do
    artist = Artist.new
    expect(artist).not_to be_valid
    expect(artist.errors[:name]).to eq(["can't be blank"])
  end

  it "should have many albums" do
    expect(Artist.reflect_on_association(:albums).macro).to eq(:has_many)
  end
end
