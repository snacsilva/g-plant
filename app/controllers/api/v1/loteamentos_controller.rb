class Api::V1::LoteamentosController < ApplicationController
  respond_to :json
  before_action :carrega_user
  before_action :set_loteamento, only: [:show]

  def index
    @loteamentos = Loteamento.all

  end

  def show
  end

  def create
    @loteamento = Loteamento.new(loteamento_params)

    respond_to do |format|
      if @loteamento.save
        @loteamento
      else
        @loteamento.errors
      end
    end
  end

  private
    def set_loteamento
      @loteamento = Loteamento.find(params[:id])
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
