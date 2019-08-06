class CorretoresController < ApplicationController
  before_action :set_corretor, only: [:show, :edit, :update, :destroy]

  # GET /corretores
  # GET /corretores.json
  def index
    @corretores = Corretor.all
  end

  # GET /corretores/1
  # GET /corretores/1.json
  def show
  end

  # GET /corretores/new
  def new
    @corretor = Corretor.new
  end

  # GET /corretores/1/edit
  def edit
  end

  # POST /corretores
  # POST /corretores.json
  def create
    @corretor = Corretor.new(corretor_params)

    respond_to do |format|
      if @corretor.save
        format.html { redirect_to @corretor, notice: 'Corretor was successfully created.' }
        format.json { render :show, status: :created, location: @corretor }
      else
        format.html { render :new }
        format.json { render json: @corretor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corretores/1
  # PATCH/PUT /corretores/1.json
  def update
    respond_to do |format|
      if @corretor.update(corretor_params)
        format.html { redirect_to @corretor, notice: 'Corretor was successfully updated.' }
        format.json { render :show, status: :ok, location: @corretor }
      else
        format.html { render :edit }
        format.json { render json: @corretor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corretores/1
  # DELETE /corretores/1.json
  def destroy
    @corretor.destroy
    respond_to do |format|
      format.html { redirect_to corretores_url, notice: 'Corretor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corretor
      @corretor = Corretor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corretor_params
      params.require(:corretor).permit(:nome, :cpf, :crea, :telefone)
    end
end
