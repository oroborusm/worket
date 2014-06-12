class Usuario < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :tipo_rol
	has_many :servicios
	has_many :comentarios

#	has_many :roles
#	has_many :tipo_roles, :through => :roles, :dependent => :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
