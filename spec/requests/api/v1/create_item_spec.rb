require 'rails_helper'

context "When I send a POST request to `/api/v1/items`" do
  describe "with a name, description, and image_url" do
    it "I receive a 201 JSON  response if the record is successfully created" do

      post 'api/v1/items?name=thing1&description=thingsandstuff&image_url=thing.png'

    end
    it "And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at" do

    end
  end
end
