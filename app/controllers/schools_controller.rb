class SchoolsController < ApplicationController
  helper_method :sort_column, :sort_direction

def api_index
  @schools = School.order("id ASC")
end

def api_show
   @school = School.find(params[:id])
   #what does this argument do?
   @students = Match.find_matched_students(@school)
end

def index
	@schools = School.search(params[:search]).order(sort_column + " " + sort_direction)
end

def show
   @school = School.find(params[:id])
   #what does this argument do?
   @students = Match.find_matched_students(@school)
end

def new
	@school = School.new
end

def create
	@school = School.new(school_params)

	if @school.save
     redirect_to @school
   else
    render 'new'

  end

end

# 		sign_in @school
# 		redirect_to @school
# 	else
# 		render :new
# 	end
# end
def edit
  @school = School.find(params[:id])
end 

def update
  @school = School.find(params[:id])
    if @school.update_attributes(school_params)
      redirect_to @school
    else
      render 'edit'
    end
  end

  #  respond_to do |format|
  #     if @school.update_attributes(school_params)
  #       format.html { redirect_to @school, notice: 'School was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @school }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @school.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

def destroy 
 @school = School.find(params[:id])
 @school.destroy
redirect_to schools_path
end

  #   respond_to do |format|
  #     format.html { redirect_to @school, notice: 'School was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

private 
def school_params
	params.require(:school).permit(:name, :email, :picture, :location, :tips, :tuition, :password)
end 

def sort_column
  School.column_names.include?(params[:sort]) ? params[:sort] : "name"
end

def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end


# def find_school
# 	@school = School.find(params[:id])
# end

end