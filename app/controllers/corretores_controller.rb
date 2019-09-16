class CorretoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_corretor, only: [:show, :edit, :update, :destroy]

  def index
    @corretores = Corretor.all
  end

  def show
  end

  def new
    @corretor = Corretor.new
  end

  def edit
  end

  def create    
    usuario = Corretor.find_and_create_user(corretor_params[:users])

    @corretor = Corretor.new
    
    @corretor.cpf = corretor_params[:cpf]
    @corretor.crea = corretor_params[:crea]
    @corretor.telefone = corretor_params[:telefone]
    @corretor.user_id = usuario.id

    respond_to do |format|
      if @corretor.save
        format.html { redirect_to @corretor, notice: 'Corretor was successfully created.' }
        format.json { render :show, status: :created, location: @corretor }
      else
        usuario.destroy
        format.html { render :new }
        format.json { render json: @corretor.errors, status: :unprocessable_entity }
      end
    end
  end

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

  def destroy
    @corretor.destroy
    respond_to do |format|
      format.html { redirect_to corretores_url, notice: 'Corretor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_corretor
      @corretor = Corretor.find(params[:id])
    end

    def corretor_params
      params.require(:corretor).require(:users)
      params.require(:corretor).permit(:cpf, :crea, :telefone, users: [ :name, :email, :password])
    end
end
