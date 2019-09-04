class RemoveLatitude2AndLongitude2FromLotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :lotes, :latitude_2
    remove_column :lotes, :longitude_2
  end
end
