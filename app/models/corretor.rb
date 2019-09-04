class Corretor < ApplicationRecord
  belongs_to :user
  before_create :create_user

  protected

  def create_user
    User.create(email: self.email, password: self.password, password_confirmation: self.password_confirmation)
  end
end
