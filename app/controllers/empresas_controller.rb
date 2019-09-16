class EmpresasController < ApplicationController
  before_action :authenticate_user!, only: [ :edit, :update, :destroy]
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]

  def index
    @empresas = Empresa.all
  end

  def show
  end

  def new
    @empresa = Empresa.new
  end

  def edit
  end

  def create
    usuario = Empresa.find_and_create_user(empresa_params[:users])

    @empresa = Empresa.new
    # @empresa.nome = empresa_params[:nome] 
    @empresa.cnpj = empresa_params[:cnpj]
    @empresa.user_id = usuario.id

    respond_to do |format|
      if @empresa.save
        format.html { redirect_to @empresa, notice: 'Empresa was successfully created.' }
        format.json { render :show, status: :created, location: @empresa }
      else
        format.html { render :new }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to @empresa, notice: 'Empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresa }
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @empresa.destroy
    respond_to do |format|
      format.html { redirect_to empresas_url, notice: 'Empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    def empresa_params
      params.require(:empresa).require(:users)
      params.require(:empresa).permit(:cnpj, users: [:name, :email, :password])
    end
end
