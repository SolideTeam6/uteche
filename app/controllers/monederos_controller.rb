class MonederosController < ApplicationController
  before_action :set_monedero, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!
  # GET /monederos
  # GET /monederos.json
  def index
    @monederos = Monedero.all
  end

  # GET /monederos/1
  # GET /monederos/1.json
  def show
  end

  # GET /monederos/new
  def new
    @monedero = Monedero.new
  end

  # GET /monederos/1/edit
  def edit
  end

  # POST /monederos
  # POST /monederos.json
  def create
    @monedero = Monedero.new(monedero_params)

    respond_to do |format|
      if @monedero.save
        format.html { redirect_to @monedero, notice: 'Monedero was successfully created.' }
        format.json { render :show, status: :created, location: @monedero }
      else
        format.html { render :new }
        format.json { render json: @monedero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monederos/1
  # PATCH/PUT /monederos/1.json
  def update
    respond_to do |format|
      if @monedero.update(monedero_params)
        format.html { redirect_to @monedero, notice: 'Monedero was successfully updated.' }
        format.json { render :show, status: :ok, location: @monedero }
      else
        format.html { render :edit }
        format.json { render json: @monedero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monederos/1
  # DELETE /monederos/1.json
  def destroy
    @monedero.destroy
    respond_to do |format|
      format.html { redirect_to monederos_url, notice: 'Monedero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monedero
      @monedero = Monedero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monedero_params
      params.require(:monedero).permit(:student_id, :cantidad)
    end
end
