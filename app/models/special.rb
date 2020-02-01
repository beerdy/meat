class Special < ActiveRecord::Base
  dragonfly_accessor :image

  rails_admin do
    include_all_fields
    exclude_fields   :updated_at, :slave
  end
end
