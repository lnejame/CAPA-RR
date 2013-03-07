class CaTypesController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@ca_types = CaType.all
		end
		
		def new
				@ca_type = CaType.new
		end
		
		def create
				@ca_type = CaType.create(params[:ca_type])
				if @ca_type.save
						flash[:success] = "Type created successfully."
						redirect_to ca_types_path
				else
						flash[:error] = "Error in creating type."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@ca_type.update_attributes(params[:ca_type])
				if @ca_type.save
						flash[:success] = "Type details updated successfully."
						redirect_to ca_types_path
				else
						flash[:error] = "Error in updating type details."
						render 'edit'
				end
		end
		
		def destroy
				@ca_type.destroy
				flash[:success] = "Type deleted successfully."
				redirect_to ca_types_path
		end
		
		def record_exists
				@ca_type = CaType.find(params[:id])
				if @ca_type.blank?
						return redirect_to ca_types_path
				end
		end
end
