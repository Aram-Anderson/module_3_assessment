class Store

  attr_reader :longname, :storetype, :city, :distance, :phone

  def initialize(params)
    @longname   = params[:longName]
    @storetype  = params[:storeType]
    @city       = params[:city]
    @distance   = params[:distance]
    @phone      = params[:phone]
  end

  def self.make_stores(store_response)
    store_response.map do |store|
      new(store)
    end
  end
end
