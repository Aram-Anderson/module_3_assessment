require 'rails_helper'

feature "As a user" do
  context "When I visit '/' and I fill in a search box with '80202' and click 'search'" do
    scenario "I should see 17 stores within 25 miles of 80202" do
      VCR.use_cassette("best buy search") do
        visit "/"
        fill_in 'search', with: "80202"
        click_on "Locate"
        expect(current_path).to eq("/search")

        expect(page).to have_content("17 Total Stores")
        within(first(".store")) do
          expect(page).to have_css(".name")
          expect(page).to have_css(".city")
          expect(page).to have_css(".distance")
          expect(page).to have_css(".phone")
          expect(page).to have_css(".type")
        end
      end
    end
  end
end

# And I should see exactly 10 results (There are 17 stores within 25 miles. We want to display 10 on this page and 7 on the next. Get the first page to work first from start to finish and worry about pagination later.)
# And I should see the long name, city, distance, phone number and store type for each of the 10 results
