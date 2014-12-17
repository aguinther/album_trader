class AlbumListing < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  belongs_to :buyer, :class_name => 'User', :foreign_key => 'id'
  belongs_to :seller, :class_name => 'User', :foreign_key => 'id'
end
