json.user do
  json.(@user, :id, :email)
  json.favorites @user.favorites do |fav|
    json.user_id fav.user_id
    json.remote_id fav.remote_id
    json.image_url fav.image_url
  end
end