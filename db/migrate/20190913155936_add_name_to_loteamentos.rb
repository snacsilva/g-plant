class AddNameToLoteamentos < ActiveRecord::Migration[5.2]
  def change
    add_column :loteamentos, :name, :string
  end
end
