json.favorite do
  json.(@favorite, :id, :photographer, :image_url, :profile_url, :remote_url)
end