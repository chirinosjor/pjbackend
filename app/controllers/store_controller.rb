class StoreController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid do |e|
    render json: {error: e.message}, status: :unprocessable_entity
  end

  # GET /stores
  def index
    @stores = Store.all
    render json: @stores, status: :ok
  end

  def create
    @store = Store.create!(store_params)
    render json: @store, status: :created
  end

  def update
    @store = Store.find(params[:id]) 
    if @store.update(store_params) 
      render json: { success: true } 
    else 
      render json: { success: false } 
    end 
  end 

  def show 
    render json: Store.find(params[:id]) 
  end 

  def destroy
    @store = Store.where(id: params[:id]).first
    if @store.destroy
      render json: { success: true } 
    else 
      render json: { success: false } 
    end 
  end

  private

  def store_params
    params.require(:store).permit(:id, :name, :address, :email, :phone)
  end
end
