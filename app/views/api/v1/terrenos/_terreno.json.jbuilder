json.extract! terreno, :id, :name, :latitude, :longitude, :created_at, :updated_at, :imagem
json.url terreno_url(terreno, format: :json)
