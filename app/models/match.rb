class Match < ActiveRecord::Base
	belongs_to :school
	belongs_to :student
	
	def self.find_matched_schools student
		matches = student.matches
		schools = []
		matches.each do |match|
			schools.push(School.find(match.school_id))
		end
		return schools
	end

	def self.find_matched_students school
		matches = school.matches
		students = []
		matches.each do |match|
			students.push(Student.find(match.student_id))
		end
		return students
	end

end
