class Cliente < ActiveRecord::Base
	belongs_to :region
	has_many :usuarios
end
