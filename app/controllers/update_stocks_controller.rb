class UpdateStocksController < ApplicationController
  before_action :set_update_stock, only: [:show, :edit, :update, :destroy]

  # GET /update_stocks
  # GET /update_stocks.json
  def index
    @update_stocks = UpdateStock.all
  end

  # GET /update_stocks/1
  # GET /update_stocks/1.json
  def show
  end

  # GET /update_stocks/new
  def new
    @update_stock = UpdateStock.new
    @products = Product.all
  end

  # GET /update_stocks/1/edit
  def edit
  end

  # POST /update_stocks
  # POST /update_stocks.json
  def create
    @update_stock = UpdateStock.new(update_stock_params)

    respond_to do |format|
      if @update_stock.save
        @stock = Stock.find_by(product: @update_stock.product)
        @stock.cantidad = @stock.cantidad + @update_stock.cantidad
        @stock.save
        format.html { redirect_to @update_stock, notice: 'Update stock was successfully created.' }
        format.json { render :show, status: :created, location: @update_stock }
      else
        format.html { render :new }
        format.json { render json: @update_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /update_stocks/1
  # PATCH/PUT /update_stocks/1.json
  def update
    respond_to do |format|
      if @update_stock.update(update_stock_params)
        format.html { redirect_to @update_stock, notice: 'Update stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @update_stock }
      else
        format.html { render :edit }
        format.json { render json: @update_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /update_stocks/1
  # DELETE /update_stocks/1.json
  def destroy
    @update_stock.destroy
    respond_to do |format|
      format.html { redirect_to update_stocks_url, notice: 'Update stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_update_stock
      @update_stock = UpdateStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def update_stock_params
      params.require(:update_stock).permit(:product_id, :cantidad)
    end
end
