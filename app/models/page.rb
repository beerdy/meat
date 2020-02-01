class Page < ActiveRecord::Base
  
  rails_admin do
    include_all_fields
    exclude_fields  :sort, :updated_at, :created_at, :image_uid, :image_name

    field :description, :rich_editor do
      config({
        :insert_many => true
      })
    end
  end
end
=begin
  rails_admin do
    include_all_fields
    exclude_fields  :sort, :updated_at, :created_at
  end
=end