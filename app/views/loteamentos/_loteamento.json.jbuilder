json.extract! loteamento, :id, :name, :longitude, :latitude, :terreno_id, :created_at, :updated_at
json.url loteamento_url(loteamento, format: :json)
