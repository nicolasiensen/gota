class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :image, :last_name, :remote_image_url
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
