require "rails_helper"

RSpec.describe "Spin Class Join", :type => :request do

  it "joins a Spin class and redirects to Reservations New Page" do
    get "/spin_classes/:spin_class_id/reservations/new"
    expect(response).to render_template(:show)

    post "/spin_class/reservations", :params => { :reservation => {:guests => "Guests"} }

    expect(response).to redirect_to(assigns(:reservation))
    follow_redirect!
    expect(response).to render_template(:show)
    expect(response.body).to include("You have joined a class!")
  end

  it "does not render a different template" do
    get "/spin_classes/:spin_class_id/reservations/new"
    expect(response).to_not render_template(:show)
  end
end
