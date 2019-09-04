class RenameLatitudeAndLongitudeFromLotes < ActiveRecord::Migration[5.2]
  def change
    rename_column :lotes, :latitude_1, :latitude
    rename_column :lotes, :longitude_1, :longitude
  end
end
