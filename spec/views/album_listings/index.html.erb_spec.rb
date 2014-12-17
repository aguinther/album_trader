require 'rails_helper'

RSpec.describe "album_listings/index", :type => :view do
  before(:each) do
    assign(:album_listings, [
      AlbumListing.create!(
        :price => 1.5,
        :quantity => 1,
        :condition => "Condition"
      ),
      AlbumListing.create!(
        :price => 1.5,
        :quantity => 1,
        :condition => "Condition"
      )
    ])
  end

  it "renders a list of album_listings" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
  end
end
