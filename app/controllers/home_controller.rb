class HomeController < ApplicationController
  layout 'nav'
  def index
  	#sql = "select usuarios.nombre1, usuarios.apellido1, servicios.titulo, medias.nombre_archivo FROM usuarios usuarios, servicios servicios, medias medias where usuarios.id = servicios.usuario_id and servicios.id = medias.servicio_id;"
  	#@worket = ActiveRecord::Base.connection.execute(sql)
  end
end
