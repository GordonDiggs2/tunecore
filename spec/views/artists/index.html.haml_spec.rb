require 'rails_helper'

RSpec.describe "artists/index", :type => :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :name => "MyText"
      ),
      Artist.create!(
        :name => "MyText"
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
