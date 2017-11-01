require 'rails_helper'

feature "When a user visits the root page" do
  context "they get a 200 status" do
    scenario "and they see an items heading" do
      item = create(:item)

      visit "/"
      expect(current_path).to eq(root_path)
      expect(status_code).to eq(200)
      expect(page).to have_content("Items")
      expect(page).to have_content(item.name)
    end
  end
end
