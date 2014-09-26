require 'spec_helper'

describe Song, :type => :model do
  it "should require a title" do
    song = Song.new
    expect(song).not_to be_valid
    expect(song.errors[:title]).to eq(["can't be blank"])
  end

  it "should require an album_id" do
    song = Song.new
    expect(song).not_to be_valid
    expect(song.errors[:album_id]).to eq(["can't be blank"])
  end

  it "belong to an album" do
    expect(Song.reflect_on_association(:album).macro).to eq(:belongs_to)
  end

end
