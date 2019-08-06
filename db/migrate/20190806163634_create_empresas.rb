class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :cnpj

      t.timestamps
    end
  end
end
