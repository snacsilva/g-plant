class LotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_lote, only: [:show, :edit, :update, :destroy]

  def index
    @lotes = Lote.all
  end

  def show
  end

  def new
    @lote = Lote.new
  end

  def edit
  end

  def create
    @lote = Lote.new(lote_params)

    respond_to do |format|
      if @lote.save
        format.html { redirect_to @lote, notice: 'Lote was successfully created.' }
        format.json { render :show, status: :created, location: @lote }
      else
        format.html { render :new }
        format.json { render json: @lote.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @lote.update(lote_params)
        format.html { redirect_to @lote, notice: 'Lote was successfully updated.' }
        format.json { render :show, status: :ok, location: @lote }
      else
        format.html { render :edit }
        format.json { render json: @lote.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lote.destroy
    respond_to do |format|
      format.html { redirect_to lotes_url, notice: 'Lote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_lote
      @lote = Lote.find(params[:id])
    end

    def lote_params
      params.require(:lote).permit(:name, :latitude_1, :latitude_2, :longitude_1, :longitude_2, :image_name, :image_type, :tile_url_x, :tile_url_y, :tile_url_z, :imagem)
    end
end
