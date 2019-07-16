require "rails_helper"

RSpec.describe "Spin Class Join", :type => :request do

  it "joins a Spin class and redirects to Reservations New Page" do
    spin_class = create(:spin_class)

    stub_authorize

    get "/spin_classes/#{spin_class.id}/reservations/new"
    expect(response).to render_template(:new)

end

  it "does not render a different template" do
    get "/spin_classes"
    expect(response).to_not render_template(:show)
  end
end
