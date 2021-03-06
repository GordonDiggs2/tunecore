require 'rails_helper'

RSpec.describe "albums/new", :type => :view do
  before(:each) do
    assign(:album, Album.new(
      :title => "MyText",
      :artist_id => 1,
      :year => 1
    ))
  end

  it "renders new album form" do
    render

    assert_select "form[action=?][method=?]", albums_path, "post" do

      assert_select "textarea#album_title[name=?]", "album[title]"

      assert_select "input#album_artist_id[name=?]", "album[artist_id]"

      assert_select "input#album_year[name=?]", "album[year]"
    end
  end
end
