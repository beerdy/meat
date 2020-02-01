class Slider < ActiveRecord::Base
  dragonfly_accessor :image

  rails_admin do
    include_all_fields
    exclude_fields  :sort, :updated_at, :created_at, :slave, :title
  end
end
