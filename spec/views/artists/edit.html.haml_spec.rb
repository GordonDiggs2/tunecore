require 'rails_helper'

RSpec.describe "artists/edit", :type => :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :name => "MyText"
    ))
  end

  it "renders the edit artist form" do
    render

    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do

      assert_select "textarea#artist_name[name=?]", "artist[name]"
    end
  end
end
