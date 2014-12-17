require 'rails_helper'

RSpec.describe "album_listings/show", :type => :view do
  before(:each) do
    @album_listing = assign(:album_listing, AlbumListing.create!(
      :price => 1.5,
      :quantity => 1,
      :condition => "Condition"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Condition/)
  end
end
