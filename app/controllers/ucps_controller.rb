class UcpsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ucp, only: [:show, :edit, :update, :destroy, :create]

$btc = Btcprice.find(1).price

  # GET /ucps
  # GET /ucps.json
  def dashboard
    if current_user.api_id != nil
      @apikey = Api.find(current_user.api_id).apikey
    else
    end
  end

def save_api
  @api = Api.new(api_params)
  @api.save
  current_user.api_id = @api.id
  current_user.save
  redirect_to '/ucps/dashboard'
end

  def messages

  end

  def buy_success
    @success_url = request.original_url
    @success_details = Rack::Utils.parse_query(URI(@success_url).query)
    PurchaseMailer.purchase(@success_details).deliver_now
  end

  def view_listed
    @items = Item.where(user_id: current_user.id)
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_ucp
      @ucp = Ucp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ucp_params
      params.fetch(:ucp, {})
    end

    def api_params
      params.permit(:apikey)
    end

end
