class Corretor < ApplicationRecord
  belongs_to :user
  # before_create :create_user
    accepts_nested_attributes_for :user


  def self.create_user users_params
    user = User.find_by_email(users_params[:email])
    if user
      raise "Usuário já existe"
    else
      User.create(email: users_params[:email], password: users_params[:password], password_confirmation: users_params[:password])
    end
  end

  protected

end
