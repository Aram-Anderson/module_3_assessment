class Api::V1::ItemsController < ApplicationController
  include ActionController::API


 def index
   render json: Item.all
 end
end
