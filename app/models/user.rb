class User < ApplicationRecord
  has_one :cliente, dependent: :destroy
  has_one :corretor, dependent: :destroy
  has_one :empresa, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :create_token
  
  protected

  #callback to create api token when user is created
  def create_token
    self.token = email.first(4).upcase + Time.now.strftime("%H:%M:%S").strip().to_s.gsub(/[^\d]/, "")
  end
end
