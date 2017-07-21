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
    
  end

  private

    def favorite_params
      params.require(:favorite).permit(:user_id, :remote_id, :image_url)
    end

end