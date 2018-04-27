class AuthController < ApplicationController
before_action :authenticate_user!

  def user_control

  end

end
