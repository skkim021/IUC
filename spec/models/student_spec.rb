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

		describe 'when the attributes are valid'
			it 'is valid' do
				student = Student.new(@valid_attributes)
				expect(student).to be_valid 
			end
		end

		# describe 'validations:' do

		# 	context 'when first_name is missing'
		# 	it 'it is not valid' do
		# 		student = Student.new(@valid_attributes.merge(first_name: nil))
		# 		expect(student).not_to be_valid
		# 	end
		# end

		# describe 'validations:' do
		# 	context 'when last_name is missing'
		# 	it 'it is not valid' do
		# 		student = Student.new(@valid_attributes.merge(last_name: nil))
		# 		expect(student).not_to be_valid
		# 	end
		# end

		# describe 'validations:' do
		# 	context 'when email is missing'
		# 	it 'it is not valid' do
		# 		student = Student.new(@valid_attributes.merge(last_name: nil))
		# 		expect(student).not_to be_valid
		# 	end 
		# end

		# describe 'validations:' do
		# 	context 'when password is missing'
		# 	it 'it is not valid' do
		# 		student = Student.new(@valid_attributes.merge(last_name: nil))
		# 		expect(student).not_to be_valid
		# 	end
		# end


		describe 'the homepage', :type => :feature do
			it 'shows me the right page for site root' do
				visit '/students'

			end 
		end 