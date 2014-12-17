class CreateAlbumListings < ActiveRecord::Migration
  def change
    create_table :album_listings do |t|
      t.string :title
      t.string :artist
      t.integer :release_year
      t.float :price
      t.string :condition
      t.string :medium
      t.integer :quantity

      t.timestamps
    end
  end
end
