class TerrenosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_terreno, only: [:show, :edit, :update, :destroy]

  def index
    @terrenos = Terreno.all
  end

  def show
  end

  def new
    @terreno = Terreno.new
  end

  def edit
  end

  def create
    @terreno = Terreno.new(terreno_params)

    respond_to do |format|
      if @terreno.save
        format.html { redirect_to @terreno, notice: 'Terreno was successfully created.' }
        format.json { render :show, status: :created, location: @terreno }
      else
        format.html { render :new }
        format.json { render json: @terreno.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @terreno.update(terreno_params)
        format.html { redirect_to @terreno, notice: 'Terreno was successfully updated.' }
        format.json { render :show, status: :ok, location: @terreno }
      else
        format.html { render :edit }
        format.json { render json: @terreno.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @terreno.destroy
    respond_to do |format|
      format.html { redirect_to terrenos_url, notice: 'Terreno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_terreno
      @terreno = Terreno.find(params[:id])
    end

    def terreno_params
      params.require(:terreno).permit(:name, :latitude, :longitude, :image_name, :image_type, :tile_url_x, :tile_url_y, :tile_url_z, :imagem)
    end
end
