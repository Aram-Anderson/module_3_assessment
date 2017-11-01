require 'rails_helper'

feature "As a user" do
  context "When I visit '/' and I fill in a search box with "80202" and click "search"" do

  end
end




Then my current path should be "/search" (ignoring params)
And I should see stores within 25 miles of 80202
And I should see a message that says "17 Total Stores"
And I should see exactly 10 results (There are 17 stores within 25 miles. We want to display 10 on this page and 7 on the next. Get the first page to work first from start to finish and worry about pagination later.)
And I should see the long name, city, distance, phone number and store type for each of the 10 results
