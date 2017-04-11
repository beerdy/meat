json.extract! catalog, :id, :title, :description, :slave, :image_uid, :image_name, :url, :sort, :created_at, :updated_at
json.url catalog_url(catalog, format: :json)
