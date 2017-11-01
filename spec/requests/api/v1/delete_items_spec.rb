require 'rails_helper'

context "When I send a DELETE request to `/api/v1/items/1`" do
  it "I receive a 204 JSON response if the record is successfully deleted" do
    item = create(:item)
    expect(Item.count).to eq(1)
    delete "/api/v1/items/#{item.id}"
    expect(Item.count).to eq(0)
    expect(response.status).to eq(204)
  end
end
