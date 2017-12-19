json.extract! user, :id, :user_type_id, :email, :crypted_password, :salt, :nombre, :apellido_paterno, :apellido_materno, :sexo, :dni, :fecha_nacimiento, :celular, :direccion, :created_at, :updated_at
json.url user_url(user, format: :json)
