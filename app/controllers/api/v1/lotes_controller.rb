class Api::V1::LotesController < ApplicationController
  respond_to :json
  
  def index
    @lotes = Lote.all
  end

  def show
    @lote = Lote.find(params[:id])
  end   
end
