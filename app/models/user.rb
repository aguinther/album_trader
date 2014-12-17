class User < ActiveRecord::Base
  has_secure_password
  has_many :purchases, :class_name => 'AlbumListing', :foreign_key => 'buyer_id'
  has_many :sales, :class_name => 'AlbumListing', :foreign_key => 'seller_id'
end
