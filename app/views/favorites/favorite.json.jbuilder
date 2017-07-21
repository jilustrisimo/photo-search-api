json.favorite do
  json.(@favorite, :id, :user_id, :remote_id, :image_url)
end