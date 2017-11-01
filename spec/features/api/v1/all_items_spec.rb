require 'rails_helper'

feature "When I send a GET request to `/api/v1/items`" do
  context "I receive a 200 JSON response containing all items" do
    scenario "And each item has an id, name, description, and image_url but not the created_at or updated_at" do

    end
  end
end
