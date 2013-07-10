class ProductsController < ApplicationController
  def index
  	@product = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def update
  	@product = Product.find(params[:id])

  	if @product.update_attributes(params[:product])
  		redirect_to product_path(@product)
  	else
  		render :edit
  end

  def destroy
  	@product = Product.find(params[:id])

  	@product.destroy
  end
  
end
