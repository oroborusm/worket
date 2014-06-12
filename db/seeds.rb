# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Region.create([{nombre: 'Región de Arica y Parinacota', numero: 'XV'}, \
			   {nombre: 'Región de Tarapacá', numero: 'I'}, \
			   {nombre: 'Región de Antofagasta', numero: 'II'}, \
			   {nombre: 'Región de Atacama', numero: 'III'}, \
			   {nombre: 'Región de Coquimbo', numero: 'IV'}, \
			   {nombre: 'Región de Valparaíso', numero: 'V'}, \
			   {nombre: 'Región Metropolitana', numero: 'XIII'}, \
			   {nombre: 'Región del Libertador General Bernardo O\'Higgins', numero: 'VI'}, \
			   {nombre: 'Región del Maule', numero: 'VII'}, \
			   {nombre: 'Región del Biobío', numero: 'VIII'}, \
			   {nombre: 'Región de La Araucanía', numero: 'IX'}, \
			   {nombre: 'Región de Los Ríos', numero: 'XIV'}, \
			   {nombre: 'Región de Los Lagos', numero: 'X'}, \
			   {nombre: 'Región de Aysén', numero: 'XI'}, \
			   {nombre: 'Región de Magallanes', numero: 'XII'}])

#agregando Roles

TipoRol.create ([{nombre: 'administrador'}, {nombre: 'administrador_contenido'}, {nombre: 'worket'}, {nombre: 'cliente'}])
