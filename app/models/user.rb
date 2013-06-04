class User < ActiveRecord::Base
  attr_accessible :first_name, :image, :last_name
  mount_uploader :image, UserImageUploader
  
  def name
    "#{self.first_name} #{self.last_name}"
  end
end
