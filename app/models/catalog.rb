class Catalog < ActiveRecord::Base
  belongs_to :group
  dragonfly_accessor :image
  
  rails_admin do
    include_all_fields
    exclude_fields  :sort, :updated_at, :created_at, :set, :barbecue, :stake, :slave
  end
end
