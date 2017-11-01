class SearchService

  def initialize
    @conn = get_conn
  end

private

  def get_conn
    Faraday.new(url: "https://api.bestbuy.com/v1") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
