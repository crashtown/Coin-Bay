class UcpsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ucp, only: [:show, :edit, :update, :destroy]

  # GET /ucps
  # GET /ucps.json
  def dashboard

  end

  def messages

  end

  def view_listed
    @items = Item.all
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
end
