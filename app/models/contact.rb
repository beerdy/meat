class Contact < ActiveRecord::Base
  
  rails_admin do
    include_all_fields
    exclude_fields  :sort, :updated_at, :rents, :url, :image_name, :image_uid, :slave, :title
  end
end
