class StudentsController < ApplicationController
	helper_method :sort_column, :sort_direction
	
	def api_index
	  @students = Student.search(params[:search]).order(sort_column + " " + sort_direction)
	end

	def api_show
		@student = Student.find(params[:id])
		@schools = Match.find_matched_schools(@student)
	end

	def index
		@students = Student.search(params[:search]).order(sort_column + " " + sort_direction)
	end

	def show
		@student = Student.find(params[:id])
		@schools = Match.find_matched_schools(@student)
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		
		if @student.save
			redirect_to @student
		else
			render 'new'
		end
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_params)
			redirect_to @student
		else
			render 'edit'
		end
	end

	def destroy
		@student = Student.find(params[:id])
		if @student.destroy
			# Also delete all match instances associated with student.
			redirect_to students_path
		else 
			render 'show'
		end 
	end

	private

		def student_params
			params.require(:student).permit(:first_name, :last_name, :email, :password)
		end

		def sort_column
			Student.column_names.include?(params[:sort]) ? params[:sort] : "first_name"
		end

		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end
end
