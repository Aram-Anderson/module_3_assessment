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
   item = Item.new(item_params)
   if item.save
     render json: item, status: :created
   end
 end

 def destroy
   item = Item.find(params[:id])
   if item.destroy
     head :no_content
   end
 end

 private

 def item_params
   params.require(:item).permit(:name, :description, :image_url)
 end
end
