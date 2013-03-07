class GroupsController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@groups = Group.all
		end
		
		def new
				@group = Group.new
		end
		
		def create
				@group = Group.create(params[:group])
				if @group.save
						flash[:success] = "Group created successfully."
						redirect_to groups_path
				else
						flash[:error] = "Error in creating group."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@group.update_attributes(params[:group])
				if @group.save
						flash[:success] = "Group details updated successfully."
						redirect_to groups_path
				else
						flash[:error] = "Error in updating group details."
						render 'edit'
				end
		end
		
		def destroy
				@group.destroy
				flash[:success] = "Group deleted successfully."
				redirect_to groups_path
		end
		
		def record_exists
				@group = Group.find(params[:id])
				if @group.blank?
						return redirect_to groups_path
				end
		end
end
