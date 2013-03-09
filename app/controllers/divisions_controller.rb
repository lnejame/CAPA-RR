class DivisionsController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@divisions = Division.all
		end
		
		def new
				@division = Division.new
		end
		
		def create
				@division = Division.create(params[:division])
				if @division.save
						flash[:success] = "Division created successfully."
						redirect_to divisions_path
				else
						flash[:error] = "Error in creating division."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@division.update_attributes(params[:division])
				if @division.save
						flash[:success] = "Division details updated successfully."
						redirect_to divisions_path
				else
						flash[:error] = "Error in updating division details."
						render 'edit'
				end
		end
		
		def destroy
				@division.destroy
				flash[:success] = "Division deleted successfully."
				redirect_to divisions_path
		end
		
		private
		def record_exists
				if Division.exists?(params[:id])
						@division = Division.find(params[:id])
				else
						return redirect_to divisions_path
				end
		end
end
