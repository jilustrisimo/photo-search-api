json.favorites @favorites do |fav|
  json.id fav.id
  json.photographer fav.photographer
  json.imageURL fav.image_url
  json.profileURL fav.profile_url
  json.remoteURL fav.remote_url
end