class CategoriesController < ApplicationController
		before_filter :record_exists, :only => [:edit, :update, :destroy]
		def index
				@categories = Category.all
		end
		
		def new
				@category = Category.new
		end
		
		def create
				@category = Category.create(params[:category])
				if @category.save
						flash[:success] = "Category created successfully."
						redirect_to categories_path
				else
						flash[:error] = "Error in creating category."
						render 'new'
				end
		end
		
		def edit
		end
		
		def update
				@category.update_attributes(params[:category])
				if @category.save
						flash[:success] = "Category details updated successfully."
						redirect_to categories_path
				else
						flash[:error] = "Error in updating category details."
						render 'edit'
				end
		end
		
		def destroy
				@category.destroy
				flash[:success] = "Category deleted successfully."
				redirect_to categories_path
		end
		
		private
		def record_exists
				if Category.exists?(params[:id])
						@category = Category.find(params[:id])
				else
						return redirect_to categories_path
				end
		end
end
