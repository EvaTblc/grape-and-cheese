class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:query].present?
      @users = User.search_by_first_and_last(params[:query])
    else
      @users = User.all
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'gifter/usergifts/adduser', locals: { users: @users }, formats: [:html] }
    end

  end

  def cave
    @user = current_user
    @wines = Wine.where(user: current_user)
  end
end
