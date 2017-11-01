class SearchController < ApplicationController
  def index
    @stores = SearchService.new.find_by_zip(params[:search])
  end
end
