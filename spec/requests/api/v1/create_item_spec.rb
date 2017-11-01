require 'rails_helper'

context "When I send a POST request to `/api/v1/items`" do
  describe "with a name, description, and image_url" do
    it "I receive a 201 JSON  response if the record is successfully created" do
      items = Item.all
      expect(items.count).to eq(0)
      post "/api/v1/items?item[name]=Thing&item[description]=Thingandstuff&item[image_url]=thing.png"
      items = Item.all
      expect(items.count).to eq(1)
    end
    it "And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at" do
      post "/api/v1/items?item[name]=Thing&item[description]=Thingandstuff&item[image_url]=thing.png"

      item = JSON.parse(response.body, symbolize_names: true)
      expect(item[:name]).to eq("Thing")
      expect(item[:description]).to eq("Thingandstuff")
      expect(item[:image_url]).to eq("thing.png")
      expect(item[:created_at]).to eq(nil)
      expect(item[:updated_at]).to eq(nil)
    end
  end
end
