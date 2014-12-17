require 'rails_helper'

RSpec.describe "album_listings/new", :type => :view do
  before(:each) do
    assign(:album_listing, AlbumListing.new(
      :price => 1.5,
      :quantity => 1,
      :condition => "MyString"
    ))
  end

  it "renders new album_listing form" do
    render

    assert_select "form[action=?][method=?]", album_listings_path, "post" do

      assert_select "input#album_listing_price[name=?]", "album_listing[price]"

      assert_select "input#album_listing_quantity[name=?]", "album_listing[quantity]"

      assert_select "input#album_listing_condition[name=?]", "album_listing[condition]"
    end
  end
end
