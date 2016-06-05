json.array!(@prodapis) do |prodapi|
  json.extract! prodapi, :id, :name, :price, :category_id
  json.url prodapi_url(prodapi, format: :json)
end
