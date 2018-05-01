class AuthController < ApplicationController
before_action :authenticate_user!


  def user_control
    @item = Item.all
  end

  def sell_view
    @tab = params[:tab]
  end

  def sell_create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @item.save
    redirect_to auth_path
  end

  private

  def set_item
      @item = Item.find(params[:id])
  end

  def item_params
    params.permit(:name, :description, :category, :price, :shipping, :quantity, :user_id)
  end
end
