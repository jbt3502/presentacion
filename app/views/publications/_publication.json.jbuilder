json.extract! publication, :id, :field_id, :nombre, :descripcion, :fecha_inicio, :fecha_fin, :tarifa, :created_at, :updated_at
json.url publication_url(publication, format: :json)
