require 'rails_helper'

feature "When I send a GET request to `/api/v1/items/1`" do
  context "I receive a 200 JSON response" do
    scenario "And the page contains the id, name, description, and image_url but not the created_at or updated_at" do
      
    end
  end
end
