require 'rails_helper'
Rspec.describe Api::V1::ReadingsController.type: :controller do
  before {give(controller).to recieve(:authorize_request).and_return(true) }
  describe "use permit_request before action" do
    context 'when user is authorized 'do
    it { should use_before_action(:authorize_request)}


  end
end