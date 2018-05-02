class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  $btc = Btcprice.find(1).price

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    filter_params.each do | key, value |
    @items = @items.public_send(key, value) if value.present?
    end
  end

  def current_btc_price
  @price =  Binance::Api.ticker!(symbol: "BTCUSDT", type: "price")
  @btc = Btcprice.find(1)
  @btc.price = @price[:price]
  @btc.save
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @ucps = Ucps.all
    @item = Item.new(item_params)
    @item.user = current_user


    respond_to do |format|
      if @item.save
        format.html { redirect_to "/ucps/view_listed", notice: 'Item was successfully listed.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to "/ucps/view_listed", notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to "/ucps/view_listed", notice: 'Item was successfully de-listed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def filter_params
        params.slice(:title, :price)
      end
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :description, :category_id, :price, :shipping_id, :quantity, :user_id)
    end
end
