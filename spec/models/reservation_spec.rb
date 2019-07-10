require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it "has a valid factory - user_id, spin_class_id, and guests" do
    expect(create(:reservation)).to be_valid
  end

  it "is not valid without a spin_class_id" do
    expect(build(:reservation, spin_class_id: nil)).not_to be_valid
  end

  describe "structure" do
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:spin_class_id).of_type(:integer) }

  end
end
