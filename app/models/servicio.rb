class Servicio < ActiveRecord::Base
	belongs_to :usuario
	has_many :medias

	FOTOS = File.join Rails.root, 'public', 'servicios'
	after_save :guardar_foto

	def adjunto=(file_data)
		unless file_data.blank?
			@file_data = file_data
			@extension = file_data.original_filename
		end
	end

	def photo_filename
		c = FOTOS+"/#{id}"
		File.join c, "#{@extension}"
	end

	def photo_path
		archivo = Media.where(servicio_id: "#{id}")
		archivo.each do |a|
			@archivo = archivo.to_s
			@path = "/servicios/#{id}/#{a.nombre_archivo}"
		end
		#extension = "#{@extension}"
		#path = "/servicios/#{id}/#{@extension}"
		return @path
	end

	def has_photo?
		File.exists? photo_filename		
	end

	private

	def guardar_foto
		Media.create(nombre_archivo: "#{@extension}", servicio_id: "#{id}")
		if @file_data
			c = FOTOS+"/#{id}"
			FileUtils.mkdir_p c
			File.open(photo_filename, 'wb') do |f|
				f.write(@file_data.read)
			end
			@file_data = nil
		end
	end
end
