require 'rails_helper'

feature "When a user visits an item show page" do
  context "they get a 200 status" do
    scenario "and they see only that item" do
      item1 = create(:item)
      item2 = create(:item)

      visit item_path(item1)
      expect(current_path).to eq("/items/#{item1.id}")
      expect(status_code).to eq(200)
      expect(page).to have_content(item1.name)
      expect(page).to have_content(item1.description)
      expect(page).to_not have_content(item2.name)
    end
  end
end
