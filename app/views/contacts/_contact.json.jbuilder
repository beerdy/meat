json.extract! contact, :id, :name, :phone, :email, :image_uid, :description, :slave, :image_name, :url, :sort, :created_at, :updated_at
json.url contact_url(contact, format: :json)
