json.favorites @favorites do |fav|
  json.id fav.id
  json.remote_id fav.remote_id
  json.image_url fav.image_url
end