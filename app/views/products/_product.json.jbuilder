json.extract! product, :id, :nombre, :marca, :precio, :imagen, :created_at, :updated_at
json.url product_url(product, format: :json)