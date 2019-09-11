class Api::V1::LoteamentosController < ApplicationController
  before_action :set_loteamento, only: [:show]

  def index
    @loteamentos = Loteamento.all

  end

  def show
  end

  private
    def set_loteamento
      @loteamento = Loteamento.find(params[:id])
    end
end
