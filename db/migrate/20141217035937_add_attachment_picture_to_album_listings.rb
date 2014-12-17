class AddAttachmentPictureToAlbumListings < ActiveRecord::Migration
  def self.up
    change_table :album_listings do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :album_listings, :picture
  end
end
