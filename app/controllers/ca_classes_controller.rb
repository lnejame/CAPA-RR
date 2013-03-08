class CaClassesController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@ca_classes = CaClass.all
		end
		
		def new
				@ca_class = CaClass.new
		end
		
		def create
				@ca_class = CaClass.create(params[:ca_class])
				if @ca_class.save
						flash[:success] = "Class created successfully."
						redirect_to ca_classes_path
				else
						flash[:error] = "Error in creating class."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@ca_class.update_attributes(params[:ca_class])
				if @ca_class.save
						flash[:success] = "Class details updated successfully."
						redirect_to ca_classes_path
				else
						flash[:error] = "Error in updating class details."
						render 'edit'
				end
		end
		
		def destroy
				@ca_class.destroy
				flash[:success] = "Class deleted successfully."
				redirect_to ca_classes_path
		end
		
		def record_exists
				if CaClass.exists?(params[:id])
						@ca_class = CaClass.find(params[:id])
				else
						return redirect_to ca_classes_path
				end
		end
end
