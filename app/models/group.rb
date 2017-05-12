class Group < ActiveRecord::Base
  has_many :products
  has_many :catalogs
  dragonfly_accessor :image
end
