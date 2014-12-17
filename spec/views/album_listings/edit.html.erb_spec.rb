require 'rails_helper'

RSpec.describe "album_listings/edit", :type => :view do
  before(:each) do
    @album_listing = assign(:album_listing, AlbumListing.create!(
      :price => 1.5,
      :quantity => 1,
      :condition => "MyString"
    ))
  end

  it "renders the edit album_listing form" do
    render

    assert_select "form[action=?][method=?]", album_listing_path(@album_listing), "post" do

      assert_select "input#album_listing_price[name=?]", "album_listing[price]"

      assert_select "input#album_listing_quantity[name=?]", "album_listing[quantity]"

      assert_select "input#album_listing_condition[name=?]", "album_listing[condition]"
    end
  end
end
