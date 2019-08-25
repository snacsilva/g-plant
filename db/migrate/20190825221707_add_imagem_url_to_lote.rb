class AddImagemUrlToLote < ActiveRecord::Migration[5.2]
  def change
    add_column :lotes, :imagem_url, :string
  end
end
