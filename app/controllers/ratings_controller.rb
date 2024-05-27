class RatingsController < ApplicationController
  def create
    wine = Wine.find(params[:wine_id])
    rating = Rating.new(ratings_params)
    rating.wine = wine
    rating.user = current_user
    if rating.save!
      redirect_to wine_path(wine)
    end
  end

  def destroy
    @rating = current_user.ratings.find(params[:id])
    wine = @rating.wine
    @rating.destroy

    redirect_to wine_path(wine)
  end

  private

  def ratings_params
    params.require(:rating).permit(:description, :votes)
  end
end
