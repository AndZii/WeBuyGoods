json.array!(@products) do |product|
  json.extract! product, :id, :name, :text, :first_img, :second_img, :price
  json.url product_url(product, format: :json)
end
