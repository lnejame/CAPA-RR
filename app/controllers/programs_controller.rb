class ProgramsController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@programs = Program.all
		end
		
		def new
				@program = Program.new
		end
		
		def create
				@program = Program.create(params[:program])
				if @program.save
						flash[:success] = "Program created successfully."
						redirect_to programs_path
				else
						flash[:error] = "Error in creating program."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@program.update_attributes(params[:program])
				if @program.save
						flash[:success] = "Program details updated successfully."
						redirect_to programs_path
				else
						flash[:error] = "Error in updating program details."
						render 'edit'
				end
		end
		
		def destroy
				@program.destroy
				flash[:success] = "Program deleted successfully."
				redirect_to programs_path
		end
		
		private
		def record_exists
				if Program.exists?(params[:id])
						@program = Program.find(params[:id])
				else
						return redirect_to programs_path
				end
		end
end
