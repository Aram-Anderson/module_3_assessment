require 'rails_helper'

RSpec.describe User, type: :model do
  it "responds to attributes" do
    user = create(:user)
    expect(user).to respond_to(:name)
    expect(user).to respond_to(:email)
  end
  it {should have_many :orders}
end
