class User < ActiveRecord::Base
  attr_accessible :first_name, :image, :last_name
  mount_uploader :image, UserImageUploader
  scope :featured, where(featured: true)
  has_many :following, class_name: "Follow", foreign_key: "follower_id"
  has_many :followers, class_name: "Follow", foreign_key: "followed_id"
  has_many :posts
  has_many :signatures
  
  def name
    "#{self.first_name} #{self.last_name}"
  end
end
