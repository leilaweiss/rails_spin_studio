def stub_authorize
  allow_any_instance_of(ApplicationController).to receive(:authorize).and_return(true)
end
