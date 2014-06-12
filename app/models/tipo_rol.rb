class TipoRol < ActiveRecord::Base
	has_many :usuarios
#	has_many :roles
#	has_many :usuarios, :through => :roles, :dependent => :destroy
end
