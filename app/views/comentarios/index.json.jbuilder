json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :texto, :usuario_worket_id, :usuario_id
  json.url comentario_url(comentario, format: :json)
end
