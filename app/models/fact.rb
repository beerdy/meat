class Fact < ActiveRecord::Base
  rails_admin do
    include_all_fields
    exclude_fields  :sort, :updated_at, :created_at, :image_uid, :image_name
  end
end
