class Group < ActiveRecord::Base
  has_many :products
  dragonfly_accessor :image
end
