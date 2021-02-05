class ProductController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid do |e|
    render json: {error: e.message}, status: :unprocessable_entity
  end

  # GET /products
  def index
    @products = Product.all
    render json: @products, status: :ok
  end

  def create
    @product = Product.create!(product_params)
    render json: @product, status: :created
  end

  def update
    @product =Product.find(params[:id]) 
    if @product.update(product_params) 
      render json: { success: true } 
    else 
      render json: { success: false } 
    end 
  end 

  def show 
    render json: Product.find(params[:id]) 
  end 

  def destroy
    @product = Product.where(id: params[:id]).first
    if @product.destroy
      render json: { success: true } 
    else 
      render json: { success: false } 
    end 
  end

  private

  def product_params
    params.require(:product).permit(:id, :name, :sku, :type, :price)
  end
end
