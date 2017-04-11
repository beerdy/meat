class Page < ActiveRecord::Base
  
  rails_admin do
    include_all_fields
    #exclude_fields :sort, :created_at, :updated_at, :image
    field :description, :rich_editor do
      config({
        :insert_many => true
      })
    end
  end
end
