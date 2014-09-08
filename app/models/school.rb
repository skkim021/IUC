class School < ActiveRecord::Base
	has_many :matches
	has_many :students, through: :matches
	belongs_to :student

def self.search(search)
		if search
			# case insensitive
			where('name ILIKE ?', "%#{search}%")
		else
			all
		end
	end

end
