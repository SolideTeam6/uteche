json.extract! update_stock, :id, :product_id, :cantidad, :created_at, :updated_at
json.url update_stock_url(update_stock, format: :json)