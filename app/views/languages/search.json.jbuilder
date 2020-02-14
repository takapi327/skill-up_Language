json.array! @language do |language|
  json.id language.id
  json.user_id language.user_id
  json.tittle language.tittle
  json.name language.name.name
  json.day language.day
  json.study language.study.name
  json.content language.content
  json.image language.images.first.image.url
  # json.user_sign_in current_user
end