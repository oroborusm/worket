json.array!(@medias) do |media|
  json.extract! media, :id, :nombre_archivo, :servicio_id
  json.url media_url(media, format: :json)
end
