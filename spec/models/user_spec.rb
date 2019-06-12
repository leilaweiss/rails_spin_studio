require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory - name, email, and a password" do
  expect(create(:user)).to be_valid
end

  it "is not valid without a password" do
    expect(build(:user, password: nil)).not_to be_valid
  end
end
