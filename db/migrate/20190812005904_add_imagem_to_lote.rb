class AddImagemToLote < ActiveRecord::Migration[5.2]
  def change
    add_column :lotes, :imagem, :string
  end
end
