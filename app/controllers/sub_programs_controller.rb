class SubProgramsController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@sub_programs = SubProgram.all
		end
		
		def new
				@sub_program = SubProgram.new
		end
		
		def create
				@sub_program = SubProgram.create(params[:sub_program])
				if @sub_program.save
						flash[:success] = "SubProgram created successfully."
						redirect_to sub_programs_path
				else
						flash[:error] = "Error in creating sub_program."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@sub_program.update_attributes(params[:sub_program])
				if @sub_program.save
						flash[:success] = "SubProgram details updated successfully."
						redirect_to sub_programs_path
				else
						flash[:error] = "Error in updating sub_program details."
						render 'edit'
				end
		end
		
		def destroy
				@sub_program.destroy
				flash[:success] = "SubProgram deleted successfully."
				redirect_to sub_programs_path
		end
		
		def record_exists
				if SubProgram.exists?(params[:id])
						@sub_program = SubProgram.find(params[:id])
				else
						return redirect_to sub_programs_path
				end
		end
end
