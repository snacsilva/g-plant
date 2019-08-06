class CreateLotes < ActiveRecord::Migration[5.2]
  def change
    create_table :lotes do |t|
      t.string :name
      t.string :latitude_1
      t.string :latitude_2
      t.string :longitude_1
      t.string :longitude_2
      t.string :image_name
      t.string :image_type
      t.string :tile_url_x
      t.string :tile_url_y
      t.string :tile_url_z

      t.timestamps
    end
  end
end
