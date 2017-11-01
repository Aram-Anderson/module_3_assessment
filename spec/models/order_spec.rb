require 'rails_helper'

RSpec.describe Order, type: :model do
  it "responds to attributes" do
    order = create(:order)
    expect(order).to respond_to(:amount)
    expect(order).to respond_to(:user)
  end
  it {should belong_to :user}
  it {should have_many :items}
end
