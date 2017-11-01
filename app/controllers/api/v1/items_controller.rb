class Api::V1::ItemsController < ApplicationController
  include ActionController::API


 def index
   render json: Item.all
 end

 def show
   item = Item.find(params[:id])
   render json: item
 end

 def create
   binding.pry
   if item = Item.create(item_params)
     render json: :item, status: :success
   end
 end

 private

 def item_params
   params.require(:item).permit(:name, :description, :image_url)
 end
end
