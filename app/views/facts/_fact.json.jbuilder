json.extract! fact, :id, :title, :description, :slave, :image_uid, :image_name, :url, :sort, :created_at, :updated_at
json.url fact_url(fact, format: :json)
