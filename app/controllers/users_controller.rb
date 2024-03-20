class UsersController < ApplicationController
  before_action :authenticate_user!
  def cave
    @user = current_user
    @wines = Wine.where(user: current_user)
  end
end
