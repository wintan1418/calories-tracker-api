require 'rails_helper'
require 'application_controller'

RSpec.describe ApplicationController, type: :controller do
  let!(:user) { :user }
  # set headers for authorization
  let(:headers) { { 'Authorization' => token_generator(user) } }
  let(:invalid_headers) { { 'Authorization' => nil } }

  describe '#authorize_request' do
    context 'when  a auth token is  being passed' do
      before { allow(request).to receive(:headers).and_return(headers) }
    end

    context 'when a auth token is not being passed' do
      before do
        allow(request).to receive(:headers).and_return(invalid_headers)
      end

      it 'raises a MissingToken error' do
        expect { subject.instance_eval { authorize_request } }
          .to raise_error(ExceptionHandler::MissingToken, /token missing/)
      end
    end
  end
end
