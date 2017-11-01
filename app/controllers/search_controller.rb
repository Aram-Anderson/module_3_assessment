class SearchController < ApplicationController
  def index
    response = Faraday.get( "https://api.bestbuy.com/v1/stores(area(80202,25))?format=json&show=longName,storeType,city,distance,phone&pageSize=25&apiKey=445jt4mb4gsenju48n2ndu8d").body
    parsed_response = JSON.parse(response, symbolize_names: true)[:stores]
    @stores = Store.make_stores(parsed_response)
  end
end
