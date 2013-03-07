class SourcesController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@sources = Source.all
		end
		
		def new
				@source = Source.new
		end
		
		def create
				@source = Source.create(params[:source])
				if @source.save
						flash[:success] = "Source created successfully."
						redirect_to sources_path
				else
						flash[:error] = "Error in creating source."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@source.update_attributes(params[:source])
				if @source.save
						flash[:success] = "Source details updated successfully."
						redirect_to sources_path
				else
						flash[:error] = "Error in updating source details."
						render 'edit'
				end
		end
		
		def destroy
				@source.destroy
				flash[:success] = "Source deleted successfully."
				redirect_to sources_path
		end
		
		def record_exists
				@source = Source.find(params[:id])
				if @source.blank?
						return redirect_to sources_path
				end
		end
end
