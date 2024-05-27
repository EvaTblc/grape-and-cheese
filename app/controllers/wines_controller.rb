class WinesController < ApplicationController
  # SKIP BEFORE ACTION ??????
  def index
    if params[:query].present?
      @wines = Wine.search_by_wines(params[:query])
    else
      @wines = Wine.all.take(5)
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'wines/list', locals: { wines: @wines }, formats: [:html] }
    end
  end

  def show
    @wine = Wine.find(params[:id])
    @ratings = Rating.where(wine: @wine)
    @rating = Rating.new
    @gifts = Gift.where(wine: @wine, user: current_user)
    @gift = Gift.new

    respond_to do |format|
      format.html
      format.text { render partial: 'wines/infos', locals: { wine: @wine }, formats: [:html] }
    end

  end

  def new
    @wine = Wine.new
  end

  def create
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
