json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre1, :nombre2, :apellido1, :apellido2, :telefono2, :email, :password, :rol_id, :cliente_id
  json.url usuario_url(usuario, format: :json)
end
