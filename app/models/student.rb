class Student < ApplicationRecord
	has_many :ducks


	def list_ducks
		self.ducks.map do |duck| 
				duck.name
		end
	end

	validates :name, presence: true
	validates :mod, numericality: {greater_than: 0, less_than: 6}
end
