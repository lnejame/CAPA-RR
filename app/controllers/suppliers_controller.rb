class SuppliersController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@supplier_subsystems = SupplierSubsystem.all
		end
		
		def new
				@supplier_subsystem = SupplierSubsystem.new
		end
		
		def create
				@supplier_subsystem = SupplierSubsystem.create(params[:supplier_subsystem])
				if @supplier_subsystem.save
						flash[:success] = "SupplierSubsystem created successfully."
						redirect_to supplier_subsystems_path
				else
						flash[:error] = "Error in creating supplier_subsystem."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@supplier_subsystem.update_attributes(params[:supplier_subsystem])
				if @supplier_subsystem.save
						flash[:success] = "SupplierSubsystem details updated successfully."
						redirect_to supplier_subsystems_path
				else
						flash[:error] = "Error in updating supplier_subsystem details."
						render 'edit'
				end
		end
		
		def destroy
				@supplier_subsystem.destroy
				flash[:success] = "SupplierSubsystem deleted successfully."
				redirect_to supplier_subsystems_path
		end
		
		private
		def record_exists
				if SupplierSubsystem.exists?(params[:id])
						@supplier_subsystem = SupplierSubsystem.find(params[:id])
				else
						return redirect_to supplier_subsystems_path
				end
		end
end
