require 'rails_helper'

context "When I send a GET request to `/api/v1/items/1`" do
  describe "I receive a 200 JSON response" do
    it "And the page contains the id, name, description, and image_url but not the created_at or updated_at" do
      item1, item2 = create_list(:item, 2)
      get "/api/v1/items/#{item1.id}"
      item = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_success
      expect(item[:name]).to eq(item1.name)
    end
  end
end
