class RenameLotesToTerrenos < ActiveRecord::Migration[5.2]
  def change
    rename_table :lotes, :terrenos
  end
end
