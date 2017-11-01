require 'rails_helper'

RSpec.describe Item, type: :model do
  it "responds to attributes" do
    item = create(:item)
    expect(item).to respond_to(:name)
    expect(item).to respond_to(:description)
    expect(item).to respond_to(:image_url)
  end
  it {should have_many :order_items}
  it {should have_many :orders}
end
