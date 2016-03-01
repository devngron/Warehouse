json.array!(@warehouses) do |warehouse|
  json.extract! warehouse, :id, :product, :price, :qnty
  json.url warehouse_url(warehouse, format: :json)
end
