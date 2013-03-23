class UsersController < ApplicationController
		before_filter :record_exists, :only => [:show, :edit, :update, :destroy]
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
		
		def show
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
		
		private
		def record_exists
				if User.exists?(params[:id])
						@user = User.find(params[:id])
				else
						return redirect_to users_path
				end
		end
		
end
