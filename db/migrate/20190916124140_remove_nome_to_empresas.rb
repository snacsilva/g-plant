class RemoveNomeToEmpresas < ActiveRecord::Migration[5.2]
  def change
        remove_column :empresas, :nome
  end
end
