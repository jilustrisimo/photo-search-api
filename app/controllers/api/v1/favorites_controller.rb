class Api::V1::FavoritesController < ApplicationController
  # before_action :authenticate_token!
  before_action :limit_table_size, only: :create

  def index
    @favorites = Favorite.order(id: :desc)
    render 'favorites/favorites.json.jbuilder', favorites: @favorites
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      render 'favorites/favorite.json.jbuilder', favorite: @favorite
    else
      render json: {
        errors: @favorite.errors.full_messages.join(' ')
      }, status: 403
    end
  end

  def update
    @favorite = Favorite.find(params[:id])
    @favorite.upvote_count += 1
    if @favorite.save
      @favorites = Favorite.order(id: :desc)
      render 'favorites/favorites.json.jbuilder', favorite: @favorites
    else
      render json: {
        errors: @favorite.errors.full_messages.join(' ')
      }, status: 403
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
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
      params.require(:favorite).permit(:photographer, :image_url, :profile_url, :remote_url)
    end

    def limit_table_size
      Favorite.first.destroy if Favorite.count > 20
    end

end