class Api::V1::LoteamentosController < ApplicationController
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
end
