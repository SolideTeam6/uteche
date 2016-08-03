json.extract! student, :id, :matricula, :nombre, :paterno, :materno, :imagen, :created_at, :updated_at
json.url student_url(student, format: :json)