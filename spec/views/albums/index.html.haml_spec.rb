require 'rails_helper'

RSpec.describe "albums/index", :type => :view do
  before(:each) do
    assign(:albums, [
      Album.create!(
        :title => "MyText",
        :artist_id => Artist.last.id,
        :year => 2
      ),
      Album.create!(
        :title => "MyText",
        :artist_id => Artist.last.id,
        :year => 2
      )
    ])
  end

  it "renders a list of albums" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
