class AddUserIdToClientes < ActiveRecord::Migration[5.2]
  def change
    add_column :clientes, :user_id, :integer
  end
end
