class UsersController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@users = User.all
		end
		
		def new
				@user = User.new
		end
		
		def create
				@user = User.create(params[:user])
				if @user.save
						flash[:success] = "User created successfully."
						redirect_to users_path
				else
						flash[:error] = "Error in creating user."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@user.update_attributes(params[:user])
				if @user.save
						flash[:success] = "User details updated successfully."
						redirect_to users_path
				else
						flash[:error] = "Error in updating user details."
						render 'edit'
				end
		end
		
		def destroy
				@user.destroy
				flash[:success] = "User deleted successfully."
				redirect_to users_path
		end
		
		def record_exists
				@user = User.find(params[:id])
				if @user.blank?
						return redirect_to users_path
				end
		end
		
end
