class FormularioWorketsController < ApplicationController
  before_action :set_formulario_worket, only: [:show, :edit, :update, :destroy]

  # GET /formulario_workets
  # GET /formulario_workets.json
  def index
    @formulario_workets = FormularioWorket.all
  end

  # GET /formulario_workets/1
  # GET /formulario_workets/1.json
  def show
  end

  # GET /formulario_workets/new
  def new
    @formulario_worket = FormularioWorket.new
  end

  # GET /formulario_workets/1/edit
  def edit
  end

  # POST /formulario_workets
  # POST /formulario_workets.json
  def create
    @formulario_worket = FormularioWorket.new(formulario_worket_params)

    respond_to do |format|
      if @formulario_worket.save
        format.html { redirect_to @formulario_worket, notice: 'Formulario worket was successfully created.' }
        format.json { render action: 'show', status: :created, location: @formulario_worket }
      else
        format.html { render action: 'new' }
        format.json { render json: @formulario_worket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formulario_workets/1
  # PATCH/PUT /formulario_workets/1.json
  def update
    respond_to do |format|
      if @formulario_worket.update(formulario_worket_params)
        format.html { redirect_to @formulario_worket, notice: 'Formulario worket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @formulario_worket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formulario_workets/1
  # DELETE /formulario_workets/1.json
  def destroy
    @formulario_worket.destroy
    respond_to do |format|
      format.html { redirect_to formulario_workets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulario_worket
      @formulario_worket = FormularioWorket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulario_worket_params
      params.require(:formulario_worket).permit(:nombre1, :nombre2, :apellido1, :apellido2, :rut, :email, :telefono, :actividad, :adjunto)
    end
end
