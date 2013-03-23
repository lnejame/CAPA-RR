class CorrectiveActionsController < ApplicationController
		before_filter :record_exists, :only => [:show, :edit, :update, :destroy]
		def index
				@corrective_actions = CorrectiveAction.all
		end
		
		def new
				@corrective_action = CorrectiveAction.new
				@groups = Group.all
				@users = User.all
				@parts = Part.all
				@categories = Category.all
				@programs = Program.all
				@sub_programs = SubProgram.all
				@levels = Level.all
				@ca_classes = CaClass.all
				@ca_types = CaType.all
				@sources = Source.all
				@divisions = Division.all
				@customer_subsystems = CustomerSubsystem.all
				@supplier_subsystems = SupplierSubsystem.all
		end
		
		def show
		end
		
		def create
				@corrective_action = CorrectiveAction.create(params[:corrective_action])
				if @corrective_action.save
						flash[:success] = "Corrective Action created successfully."
						redirect_to corrective_actions_path
				else
						flash[:error] = "Error in creating Corrective Action."
						@groups = Group.all
						@users = User.all
						@parts = Part.all
						@categories = Category.all
						@programs = Program.all
						@sub_programs = SubProgram.all
						@levels = Level.all
						@ca_classes = CaClass.all
						@ca_types = CaType.all
						@sources = Source.all
						@divisions = Division.all
						@customer_subsystems = CustomerSubsystem.all
						@supplier_subsystems = SupplierSubsystem.all
						render 'new'						
				end
		end
		
		def edit
				@groups = Group.all
				@users = User.all
				@parts = Part.all
				@categories = Category.all
				@programs = Program.all
				@sub_programs = SubProgram.all
				@levels = Level.all
				@ca_classes = CaClass.all
				@ca_types = CaType.all
				@sources = Source.all
				@divisions = Division.all
				@customer_subsystems = CustomerSubsystem.all
				@supplier_subsystems = SupplierSubsystem.all
		end
		
		def update
				if @corrective_action.update_attributes(params[:corrective_action])
						flash[:success] = "Corrective Action updated successfully."
						redirect_to corrective_actions_path
				else
						flash[:error] = "Error in updating Corrective Action."
						@groups = Group.all
						@users = User.all
						@parts = Part.all
						@categories = Category.all
						@programs = Program.all
						@sub_programs = SubProgram.all
						@levels = Level.all
						@ca_classes = CaClass.all
						@ca_types = CaType.all
						@sources = Source.all
						@divisions = Division.all
						@customer_subsystems = CustomerSubsystem.all
						@supplier_subsystems = SupplierSubsystem.all
						render 'edit'
				end
		end
		
		def destroy
				@corrective_action.destroy
				flash[:success] = "Corrective Action deleted successfully."
				redirect_to corrective_actions_path
		end
		
		private
		def record_exists
				if CorrectiveAction.exists?(params[:id])
						@corrective_action = CorrectiveAction.find(params[:id])
				else
						return redirect_to corrective_actions_path
				end
		end
end
