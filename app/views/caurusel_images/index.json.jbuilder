json.array!(@caurusel_images) do |caurusel_image|
  json.extract! caurusel_image, :id, :name, :img
  json.url caurusel_image_url(caurusel_image, format: :json)
end
