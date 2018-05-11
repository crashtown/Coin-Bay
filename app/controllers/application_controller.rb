class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_btc

  def set_btc
    @btc = Btcprice.last.price
  end
  
end
