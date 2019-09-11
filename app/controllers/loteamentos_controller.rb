class LoteamentosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_loteamento, only: [:show, :edit, :update, :destroy]

  # GET /loteamentos
  # GET /loteamentos.json
  def index
    @loteamentos = Loteamento.all
  end

  # GET /loteamentos/1
  # GET /loteamentos/1.json
  def show
  end

  # GET /loteamentos/new
  def new
    @loteamento = Loteamento.new
  end

  # GET /loteamentos/1/edit
  def edit
  end

  # POST /loteamentos
  # POST /loteamentos.json
  def create
    @loteamento = Loteamento.new(loteamento_params)

    respond_to do |format|
      if @loteamento.save
        format.html { redirect_to @loteamento, notice: 'Loteamento was successfully created.' }
        format.json { render :show, status: :created, location: @loteamento }
      else
        format.html { render :new }
        format.json { render json: @loteamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loteamentos/1
  # PATCH/PUT /loteamentos/1.json
  def update
    respond_to do |format|
      if @loteamento.update(loteamento_params)
        format.html { redirect_to @loteamento, notice: 'Loteamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @loteamento }
      else
        format.html { render :edit }
        format.json { render json: @loteamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loteamentos/1
  # DELETE /loteamentos/1.json
  def destroy
    @loteamento.destroy
    respond_to do |format|
      format.html { redirect_to loteamentos_url, notice: 'Loteamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loteamento
      @loteamento = Loteamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loteamento_params
      params.require(:loteamento).permit(:longitude, :latitude, :terreno_id)
    end
end
