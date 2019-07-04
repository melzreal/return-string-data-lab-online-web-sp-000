class ProductsController < ApplicationController

	def index 
	  
	end 

	def new 
	  @product = Product.new
	end 

	def show 
	  @products = Product.all
	end 

	def create
	  @product = Product.create(product_params)	  
	  redirect to product_path(@product.id)	
	end 

	def description
	  @product = Product.find(params[:id])
	  render plain: product.description
	end 

	private

	def product_params
		params.require(:product).permit(:name, :price)
	end 

end
