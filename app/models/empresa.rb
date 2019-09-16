class Empresa < ApplicationRecord
  belongs_to :user


  def self.find_and_create_user users_params
    user = User.find_by_email(users_params[:email])
    if user
      raise "Usuário já existe"
    else
      User.create(name: users_params[:name], email: users_params[:email], password: users_params[:password], password_confirmation: users_params[:password])
    end
  end
end
