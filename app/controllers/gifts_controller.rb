class GiftsController < ApplicationController
  def create
    wine = Wine.find(params[:wine_id])
    gift = Gift.new(gift_params)
    gift.user = current_user
    gift.wine = wine
    if gift.save!
      redirect_to wine_path(wine)
    end
  end

  def destroy
    gift = Gift.find(params[:id])
    gift.destroy
    wine = gift.wine

    redirect_to wine_path(wine)
  end
  private

  def gift_params
    params.require(:gift).permit(:possession, :datepossession, :quantity)
  end

end
