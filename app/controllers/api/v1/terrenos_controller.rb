class Api::V1::TerrenosController < ApplicationController
  respond_to :json
  before_action :carrega_user
  before_action :set_terreno, only: [:show]
  
  def index
    @terrenos = Terreno.all
  end

  def show
    @terreno = Terreno.find(params[:id])
  end   

  private
    def set_terreno
      @terreno = Terreno.find(params[:id])
    end

    def carrega_user
      if params[:auth_token].present?
        @user_token = User.where(token: params[:auth_token]).try(:first)
        raise 'Token inválido' unless @user_token
      else
        raise 'Token inválido'
      end
    end
end
