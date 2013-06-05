class Signature < ActiveRecord::Base
  attr_accessible :petition, :user
  belongs_to :petition
  belongs_to :user
end
