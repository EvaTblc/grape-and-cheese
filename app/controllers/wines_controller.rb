class WinesController < ApplicationController
  
  def index
    @wines = Wine.where.not(user: current_user)
    @user_wines = Wine.where(user: current_user)
  end

  private

  def wines_params
    params.permit(:wine).require(
      :name,
      :vignoble,
      :color,
      :description,
      :come_from,
      :year,
      :price
    )
  end
end
