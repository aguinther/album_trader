class AddUserRefToAlbumListings < ActiveRecord::Migration
  def change
    add_reference :album_listings, :buyer, index: true
    add_reference :album_listings, :seller, index: true
  end
end
