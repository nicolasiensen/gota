class Follow < ActiveRecord::Base
  attr_accessible :followed, :follower
  belongs_to :followed, class_name: "User"
  belongs_to :follower, class_name: "User"
end
