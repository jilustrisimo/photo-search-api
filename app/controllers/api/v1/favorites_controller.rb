class Api::V1::FavoritesController < ApplicationController
  before_action :authenticate_token!

  def index
    render 'users/user_with_favorites.json.jbuilder', user: current_user
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user_id = current_user.id
    if @favorite.save
      render 'favorites/favorite.json.jbuilder', favorite: @favorite
    else
      render json: {
        errors: @favorite.errors
      }, status: 500
    end
  end

  def update
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.user_id == current_user.id
      @favorite.destroy
      render json: {
        message: 'Successfully removed photo from your favorites'
      }, status: 200
    else
      render json: {
        errors: 'Action not permitted.'
      }, status: 403
    end
  end

  private

    def favorite_params
      params.require(:favorite).permit(:user_id, :remote_id, :image_url)
    end

end