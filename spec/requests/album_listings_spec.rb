require 'rails_helper'

RSpec.describe "AlbumListings", :type => :request do
  describe "GET /album_listings" do
    it "works! (now write some real specs)" do
      get album_listings_path
      expect(response).to have_http_status(200)
    end
  end
end
