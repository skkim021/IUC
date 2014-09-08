class SchoolsController < ApplicationController

def index
	@schools = School.all
end

def show
   @school = School.find(params[:id])
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
	params.require(:school).permit(:name, :email, :picture, :location, :tips, :tuition)
end 

# def find_school
# 	@school = School.find(params[:id])
# end

end