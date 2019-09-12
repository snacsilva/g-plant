class Cliente < ApplicationRecord
    # has_many :lotes
    belongs_to :user
    validates_presence_of :nome, :cpf


  def self.find_and_create_user users_params
    user = User.find_by_email(users_params[:email])
    if user
      raise "Usuário já existe"
    else
      User.create(email: users_params[:email], password: users_params[:password], password_confirmation: users_params[:password])
    end
  end
end
