json.array!(@formulario_workets) do |formulario_worket|
  json.extract! formulario_worket, :id, :nombre1, :nombre2, :apellido1, :apellido2, :rut, :email, :telefono, :actividad, :adjunto
  json.url formulario_worket_url(formulario_worket, format: :json)
end
