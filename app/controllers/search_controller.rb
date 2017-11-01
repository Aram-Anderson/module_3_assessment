class SearchController < ApplicationController
  def index
    response = Faraday.get( "https://api.bestbuy.com/v1/stores(area(#{params[:search]},25))?format=json&show=longName,storeType,city,distance,phone&pageSize=25&apiKey=#{ENV["BEST_BUY_API_KEY"]}").body
    parsed_response = JSON.parse(response, symbolize_names: true)[:stores]
    @stores = Store.make_stores(parsed_response)
  end
end
