json.extract! monedero, :id, :student_id, :cantidad, :created_at, :updated_at
json.url monedero_url(monedero, format: :json)