json.favorites @favorites do |fav|
  json.id fav.id
  json.photographer fav.photographer
  json.image_url fav.image_url
  json.profile_url fav.profile_url
end