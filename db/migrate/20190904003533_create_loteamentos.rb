class CreateLoteamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :loteamentos do |t|
      t.string :longitude
      t.string :latitude
      t.integer :terreno_id

      t.timestamps
    end
  end
end
