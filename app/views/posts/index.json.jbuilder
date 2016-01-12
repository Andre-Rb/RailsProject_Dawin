json.array!(@posts) do |post|
  json.extract! post, :id, :titre, :user_id, :header, :image, :publishDate, :content
  json.url post_url(post, format: :json)
end
