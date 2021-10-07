require 'rails_helper'
RSpec.describe ApplicationController, type: :controller do
  let!(:user) { (:user) }
  # set headers for authorization
  let(:headers) { { 'Authorization' => token_generator(user) } }
  let(:invalid_headers) { { 'Authorization' => nil } }

  describe '#authorize_request' do
    context 'when  a auth token is  being passed' do
      before { allow(request).to receive(:headers).and_return(headers) }

      # private method authorize_request returns current user
      it 'sets the current user' do
        expect(subject.instance_eval { authorize_request }).to eq(user)
      end
    end

    context 'when a auth token is not neing passed' do
      before do
        allow(request).to receive(:headers).and_return(invalid_headers)
      end

      it 'raises a MissingToken error' do
        expect { subject.instance_eval { authorize_request } }
          .to raise_error(ExceptionHandler::MissingToken, /Missing token/)
      end
    end
  end
end
