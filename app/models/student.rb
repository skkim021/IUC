class Student < ActiveRecord::Base

	def self.search(search)
		if search
			# case insensitive
			where('first_name ILIKE ?', "%#{search}%")
		else
			all
		end
	end

end
