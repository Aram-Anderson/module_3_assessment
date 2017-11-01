class SearchService

  def initialize
    @conn = get_conn
  end

  def find_by_zip(zip_code)
    raw_data = get_raw_data(zip_code)
    parsed_data = JSON.parse(raw_data, symbolize_names: true)
    make_stores(parsed_data[:stores])
  end

  def get_raw_data(zip_code)
    conn.get("/v1/stores(area(#{zip_code},25))?format=json&show=longName,storeType,city,distance,phone&pageSize=25&apiKey=#{ENV['BEST_BUY_API_KEY']}").body
  end

  def make_stores(parsed_data)
    Store.make_stores(parsed_data)
  end

  private

  attr_reader :conn

  def get_conn
    Faraday.new(url: "https://api.bestbuy.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
