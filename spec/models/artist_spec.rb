require 'spec_helper'

describe Artist, :type => :model do
  it "should require a name" do
    artist = Artist.new
    expect(artist.valid?).to eq(false)
    expect(artist.errors[:name]).to eq(["can't be blank"])
  end
end
