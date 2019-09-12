class AddUserIdToEmpresas < ActiveRecord::Migration[5.2]
  def change
    add_column :empresas, :user_id, :integer
  end
end
