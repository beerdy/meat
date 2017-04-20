class Product < ActiveRecord::Base
  belongs_to :group
  dragonfly_accessor :image
end
