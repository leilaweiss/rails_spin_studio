require 'rails_helper'

RSpec.describe SpinClass, type: :model do
  it "Has a valid factory - the collection select includes the spin_classes name" do
    expect(create(:spin_class)).to be_valid
  end

  it "Spin Class is not valid without a name" do
    spin_class = build(:spin_class)
    expect(spin_class).to be_valid
  end
end


RSpec.describe SpinClass, type: :model do
  it "Has a valid factory - The spin class has a name and a studio id" do
    expect(create(:spin_class)).to be_valid
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:studio) }
  end
end
