class CreateCorretores < ActiveRecord::Migration[5.2]
  def change
    create_table :corretores do |t|
      t.string :nome
      t.string :cpf
      t.string :crea
      t.string :telefone

      t.timestamps
    end
  end
end
