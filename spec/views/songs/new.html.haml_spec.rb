require 'rails_helper'

RSpec.describe "songs/new", :type => :view do
  before(:each) do
    assign(:song, Song.new(
      :title => "MyText",
      :album_id => 1
    ))
  end

  it "renders new song form" do
    render

    assert_select "form[action=?][method=?]", songs_path, "post" do

      assert_select "textarea#song_title[name=?]", "song[title]"

      assert_select "input#song_album_id[name=?]", "song[album_id]"
    end
  end
end
