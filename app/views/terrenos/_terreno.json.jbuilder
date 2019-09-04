json.extract! terreno, :id, :name, :latitude, :longitude,  :image_name, :image_type, :tile_url_x, :tile_url_y, :tile_url_z, :created_at, :updated_at
json.url terreno_url(terreno, format: :json)
