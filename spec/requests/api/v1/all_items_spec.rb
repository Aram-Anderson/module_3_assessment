require 'rails_helper'

context "When I send a GET request to `/api/v1/items`" do
  describe "I receive a 200 JSON response containing all items" do
    it "And each item has an id, name, description, and image_url but not the created_at or updated_at" do
      create_list(:item, 3)

      get "/api/v1/items"
      expect(response).to be_success
      items = JSON.parse(response.body)

      expect(items.count).to eq(3)

    end
  end
end
