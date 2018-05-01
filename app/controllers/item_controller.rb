class ItemController < ApplicationController
before_action :authenticate_user!
before_action :set_item, only: [:show, :edit, :update, :destroy]

  def market

  end

  def sell_delete
    @item.destroy
    respond_to do |format|
      format.html { redirect_to "view-sale-items", notice: 'Item listing has been removed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_item
      @item = Item.find(params[:id])
  end

  def item_params
    params.permit(:name, :description, :category, :price, :shipping, :quantity, :user_id)
  end
end
