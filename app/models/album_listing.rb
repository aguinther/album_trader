class AlbumListing < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  belongs_to :buyer, :class_name => 'User', :foreign_key => 'id'
  belongs_to :seller, :class_name => 'User', :foreign_key => 'id'

  validates_presence_of :title, :artist, :price, :condition, :medium
  validates :price, :quantity, :numericality => { greater_than: 0 }
  validates :release_year, :numericality => { greater_than_or_equal_to: 1857}
end
