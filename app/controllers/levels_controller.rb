class LevelsController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@levels = Level.all
		end
		
		def new
				@level = Level.new
		end
		
		def create
				@level = Level.create(params[:level])
				if @level.save
						flash[:success] = "Level created successfully."
						redirect_to levels_path
				else
						flash[:error] = "Error in creating level."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@level.update_attributes(params[:level])
				if @level.save
						flash[:success] = "Level details updated successfully."
						redirect_to levels_path
				else
						flash[:error] = "Error in updating level details."
						render 'edit'
				end
		end
		
		def destroy
				@level.destroy
				flash[:success] = "Level deleted successfully."
				redirect_to levels_path
		end
		
		def record_exists
				if Level.exists?(params[:id])
						@level = Level.find(params[:id])
				else
						return redirect_to levels_path
				end
		end
end
