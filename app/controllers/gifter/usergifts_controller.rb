class Gifter::UsergiftsController < ApplicationController
  def create
    usergift = Usergift.new
    gift = Gift.find(params[:gift])
    wine = gift.wine
    usergift.gift = Gift.find(params[:gift])
    usergift.gifter = User.find(params[:gifter])
    usergift.save!

    redirect_to wine_path(wine), status: :unprocessable_entity

  end

end
