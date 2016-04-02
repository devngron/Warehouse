class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:show, :edit, :update, :destroy]
  before_action :set_product, only: [:show]

  # GET /warehouses
  # GET /warehouses.json
  def index
    @warehouses = Warehouse.all
    @products = Product.all    
  end

  # GET /warehouses/1
  # GET /warehouses/1.json
  def show    
  end

  # GET /warehouses/new
  def new
    @warehouse = Warehouse.new

    #When on change event is trigered; call method...
    #set_price(params[:id])
  end

  # GET /warehouses/1/edit
  def edit
  end

  # POST /warehouses
  # POST /warehouses.json
  def create
    @warehouse = Warehouse.new(warehouse_params)

    respond_to do |format|
      if @warehouse.save
        format.html { redirect_to @warehouse, notice: 'Warehouse was successfully created.' }
        format.json { render :show, status: :created, location: @warehouse }
      else
        format.html { render :new }
        format.json { render json: @warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warehouses/1
  # PATCH/PUT /warehouses/1.json
  def update
    respond_to do |format|
      if @warehouse.update(warehouse_params)
        format.html { redirect_to @warehouse, notice: 'Warehouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @warehouse }
      else
        format.html { render :edit }
        format.json { render json: @warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warehouses/1
  # DELETE /warehouses/1.json
  def destroy
    @warehouse.destroy
    respond_to do |format|
      format.html { redirect_to warehouses_url, notice: 'Warehouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warehouse
      @warehouse = Warehouse.find(params[:id])
    end

    def set_product      
      @product = Product.find(Warehouse.find(params[:id]).product_id)
    end

    def get_price      
      @price = Product.find(params[:product_id]).name
=begin       
      respond_to do |format|
        format.html
        format.json { render :json => @price }
      end
=end       
        if request.xhr?
          render :json => {
                              :default_price => @price
                          }
        end
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def warehouse_params
      params.require(:warehouse).permit(:product_id, :price, :qnty, :description)
    end
end
