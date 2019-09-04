class Api::V1::TerrenosController < ApplicationController
  respond_to :json
  before_action :carrega_user, if: -> { params[:auth_token].present? }

  def carrega_user
    if params[:auth_token].present?
      @user_token = User.where(token: params[:auth_token]).try(:first)
      raise 'Token inválido' unless @user_token
    end
  end
  
  def index
    @terrenos = Terreno.all
  end

  def show
    @terreno = Terreno.find(params[:id])
  end   
end
