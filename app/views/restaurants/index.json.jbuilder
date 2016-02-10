json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :address, :category, :description, :stars
  json.url restaurant_url(restaurant, format: :json)
end
