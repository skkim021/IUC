class School < ActiveRecord::Base
	has_many :matches
	has_many :students, through: :matches
	belongs_to :student

end
