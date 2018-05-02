class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @btc = Btcprice.find(1).price
end
