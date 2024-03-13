class WinesController < ApplicationController
  # SKIP BEFORE ACTION ??????
  def index
    @wines = Wine.where.not(user: current_user).first(5)
    @user_wines = Wine.where(user: current_user).first(5)
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
      :price,
      :photo,
    )
  end
end
