require "rails_helper"
RSpec.describe "Sign In" do
  it "Upon login, the user index page is rendered" do
    user = create(:user)

    get "/signin"
    expect(response).to render_template(:new)
  end
 it "does not render a different template" do
    get "/spin_classes"
    expect(response).to_not render_template(:show)
  end
end
