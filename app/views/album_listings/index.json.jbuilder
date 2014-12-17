json.array!(@album_listings) do |album_listing|
  json.extract! album_listing, :id, :price, :quantity, :condition
  json.url album_listing_url(album_listing, format: :json)
end
