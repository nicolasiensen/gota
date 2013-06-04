class Post < ActiveRecord::Base
  attr_accessible :body, :image, :title, :user_id
  mount_uploader :image, PostImageUploader
  belongs_to :user
  scope :featured, where(featured: true)
end
