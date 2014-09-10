require 'rails_helper'

describe 'Student' do
	
		before :each do 
			@valid_attributes = {
				first_name: "Sarah",
				last_name: "Kim",
				email: "s@s.com",
				password: "kimdynasty",
			}
		end

		describe 'when all attributes are valid'
			it 'is valid' do
				student = Student.new(@valid_attributes)
				expect(student).to be_valid 
			end
		end

