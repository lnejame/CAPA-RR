class CustomersController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@customer_subsystems = CustomerSubsystem.all
		end
		
		def new
				@customer_subsystem = CustomerSubsystem.new
		end
		
		def create
				@customer_subsystem = CustomerSubsystem.create(params[:customer_subsystem])
				if @customer_subsystem.save
						flash[:success] = "CustomerSubsystem created successfully."
						redirect_to customer_subsystems_path
				else
						flash[:error] = "Error in creating customer_subsystem."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@customer_subsystem.update_attributes(params[:customer_subsystem])
				if @customer_subsystem.save
						flash[:success] = "CustomerSubsystem details updated successfully."
						redirect_to customer_subsystems_path
				else
						flash[:error] = "Error in updating customer_subsystem details."
						render 'edit'
				end
		end
		
		def destroy
				@customer_subsystem.destroy
				flash[:success] = "CustomerSubsystem deleted successfully."
				redirect_to customer_subsystems_path
		end
		
		private
		def record_exists
				if CustomerSubsystem.exists?(params[:id])
						@customer_subsystem = CustomerSubsystem.find(params[:id])
				else
						return redirect_to customer_subsystems_path
				end
		end
end
