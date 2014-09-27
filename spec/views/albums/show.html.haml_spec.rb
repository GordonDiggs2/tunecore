require 'rails_helper'

RSpec.describe "albums/show", :type => :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :title => "MyText",
      :artist_id => Artist.last.id,
      :year => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
