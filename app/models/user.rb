class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :image, :last_name, :remote_image_url, :email_confirmation, :bio, :website, :zipcode, :address, :city, :state, :subscriber
  attr_accessor :email_confirmation
  mount_uploader :image, UserImageUploader
  scope :featured, where(featured: true)
  has_many :following, class_name: "Follow", foreign_key: "follower_id"
  has_many :followers, class_name: "Follow", foreign_key: "followed_id"
  has_many :posts
  has_many :signatures
  validate :email_confirmation_cannot_be_different_from_email
  
  def name
    "#{self.first_name} #{self.last_name}"
  end
  
  def email_confirmation_cannot_be_different_from_email
    if email_confirmation != email then errors.add(:email_confirmation, "is not the same as email") end
  end
end
