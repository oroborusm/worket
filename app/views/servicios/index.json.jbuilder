json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :usuario_worket_id, :titulo, :resumen, :precio
  json.url servicio_url(servicio, format: :json)
end
