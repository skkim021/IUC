class Student < ActiveRecord::Base
	has_many :matches
	has_many :schools, through: :matches
	belongs_to :school

	def self.search(search)
		if search
			# case insensitive
			where('first_name ILIKE ?', "%#{search}%")
		else
			all
		end
	end

end
