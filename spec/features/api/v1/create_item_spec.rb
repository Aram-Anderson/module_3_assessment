require 'rails_helper'

feature "When I send a POST request to `/api/v1/items`" do
  context "with a name, description, and image_url" do
    scenario "I receive a 201 JSON  response if the record is successfully created" do

    end
    scenario "And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at" do
      
    end
  end
end
