class SchoolsController < ApplicationController
	before_action :set_school, only: [:show, :edit, :update, :destroy]

def index
	@schools = School.all
end

def show
end

def new
	@school = School.new
end

def edit
end 

def create
	@school = School.new(school_params)
  respond_to do |format|
	if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @school }
      else
        format.html { render :new }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

# 		sign_in @school
# 		redirect_to @school
# 	else
# 		render :new
# 	end
# end

def update
   respond_to do |format|
      if @school.update(school_params)
        format.html { redirect_to @school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @school }
      else
        format.html { render :edit }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

def destroy 

 @school.destroy
    respond_to do |format|
      format.html { redirect_to schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

# 	if @school.destroy
# 		render 'schools/root'
# 	else
# 		render 'show'
# 	end
# end

private 
def school_params
	params.require(:school).permit(:name, :email, :picture, :location, :tips, :tuition)
end 

def find_school
	@school = School.find(params[:id])
end

end