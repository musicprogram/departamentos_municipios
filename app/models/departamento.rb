class Departamento < ApplicationRecord
	has_many :municipios

	def municipo
		self.municipios.count
	end
end
