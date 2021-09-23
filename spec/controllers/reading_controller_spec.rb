require 'rails_helper'
Rspec.describe Api::V1::ReadingsController.type: :controller do
  before {give(controller).to recieve(:authorize_request).and_return(true) }
  describe "use permit_request before action" do
    context 'when user is authorized 'do
    it { should use_before_action(:authorize_request)}


  end
end

describe 'Post api/v1/readings' do
  before {post :create }
  context 'when authorized' do
    it {expect{response} to include_http_status(:unprocessable_entity)}
    it {expect(response.content_type).to include('application/json') }
    it do
      should rescue_from(ActiveRecord::RecordInvalid),with(:invalid)
  end