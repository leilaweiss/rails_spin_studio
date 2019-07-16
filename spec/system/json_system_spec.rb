require "rails_helper"

RSpec.describe "Spin Class Javascript Spec", :type => :system do
  before do
    driven_by(:rack_test)
  end

  it "creates a new spin class" do
    visit "/spin_classes"

    fill_in "Name", :with => "New Spin Class"
    click_button "Create Class"
     expect(page).to have_text("New Spin Class")

  end
end
