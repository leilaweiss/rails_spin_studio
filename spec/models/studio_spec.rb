require 'rails_helper'

RSpec.describe Studio, type: :model do
  it "Has a valid factory - the collection select includes the studio's name" do
    expect(create(:studio)).to be_valid
  end

  it "Studio is not valid without a name" do
    studio = build(:studio)
    expect(studio).to be_valid
  end
end
