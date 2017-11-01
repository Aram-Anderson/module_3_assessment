require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it "responds to attributes" do
    oi = create(:order_item)
    expect(oi).to respond_to(:order)
    expect(oi).to respond_to(:item)
  end
  it {should belong_to :order}
  it {should belong_to :item}
end
