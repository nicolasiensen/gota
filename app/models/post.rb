class Post < ActiveRecord::Base
  attr_accessible :body, :image, :title, :user_id, :remote_image_url
  mount_uploader :image, PostImageUploader
  belongs_to :user
  scope :featured, order(:featured)
  paginates_per 3
end
