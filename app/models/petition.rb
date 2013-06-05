class Petition < ActiveRecord::Base
  attr_accessible :image, :title, :remote_image_url
  scope :featured, where(featured: true)
  mount_uploader :image, PetitionImageUploader
  has_many :signatures
end
