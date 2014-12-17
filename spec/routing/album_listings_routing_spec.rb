require "rails_helper"

RSpec.describe AlbumListingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/album_listings").to route_to("album_listings#index")
    end

    it "routes to #new" do
      expect(:get => "/album_listings/new").to route_to("album_listings#new")
    end

    it "routes to #show" do
      expect(:get => "/album_listings/1").to route_to("album_listings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/album_listings/1/edit").to route_to("album_listings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/album_listings").to route_to("album_listings#create")
    end

    it "routes to #update" do
      expect(:put => "/album_listings/1").to route_to("album_listings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/album_listings/1").to route_to("album_listings#destroy", :id => "1")
    end

  end
end
