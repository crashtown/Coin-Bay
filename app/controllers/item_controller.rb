class ItemController < ApplicationController
before_action :authenticate_user!
before_action :set_item, only: [:show, :edit, :update, :destroy, :sell_delete]
  def index
    @tab = params[:tab]
  end

  def market

  end

  def sell_edit
    @item = Item.find(params[:id])
    render partial: "item/sell_edit"
  end

  def sell_delete
    @item.destroy
    redirect_to sell_view_path(tab: "view-sale-items")
    # respond_to do |format|
    #   format.html { redirect_to URI(request.referrer).path, notice: 'Item listing has been removed.' }
    #   format.json { head :no_content }
    # end
  end

  private

  def set_item
      @item = Item.find(params[:id])
  end

  def item_params
    params.permit(:name, :description, :category, :price, :shipping, :quantity, :user_id)
  end
end
