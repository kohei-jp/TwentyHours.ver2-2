json.array! @tweets do |tweet| # 配列で渡したい場合 array!
  json.id tweet.id
  json.text tweet.text.truncate(8)
  json.image tweet.image.url
  json.user_id tweet.user_id
  json.name tweet.user.name
  json.tag_name tweet.tag.tag_name.truncate(8)
  json.fav_count tweet.favorites.count
  json.time tweet.time.to_f
  json.user_sign_in current_user
end