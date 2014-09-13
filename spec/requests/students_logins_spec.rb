require 'rails_helper'

RSpec.describe "New Students Registered", :type => :request do
  describe "Button to registered" do
  	it "get students new registration page" do
      get "/students"
    	end
	end
end

RSpec.describe "New Students to go to New path", :type => :request do
	describe "the form for students to fill out" do
		it "create new form for students to sign in" do
			get "/students/new"
		end 
	end 
end 
