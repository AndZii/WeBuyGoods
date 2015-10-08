json.array!(@posts) do |post|
  json.extract! post, :id, :name, :text, :likes
  json.url post_url(post, format: :json)
end
