json.array!(@news) do |news|
  json.extract! news, :id, :title, :leader, :content
  json.url news_url(news, format: :json)
end
