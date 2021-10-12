require 'rails_helper'

RSpec.describe 'readings API', type: :request do
  # add readings owner
  let(:user) { create(:user) }
  let!(:readings) { create_list(:readings , 10, created_by: user.id) }
  let(:readings_id) { readings.first.id }
  # authorize request
  let(:headers) { valid_headers }

#   describe 'GET /readings' do
#     # update request with headers
#     before { get '/readings', params: {}, headers: headers }

#     # [...]
#   end

#   describe 'GET /readings/:id' do
#     before { get "/readings/#{readings_id}", params: {}, headers: headers }
#     # [...]
#   end
#   # [...]
# end

# describe 'POST /readings' do
#   let(:valid_attributes) do
#     # send json payload
#     { title: 'Learn Elm', created_by: user.id.to_s }.to_json
#   end

#   context 'when request is valid' do
#     before { post '/readings', params: valid_attributes, headers: headers }
#     # [...]
#   end

#   context 'when the request is invalid' do
#     let(:invalid_attributes) { { title: nil }.to_json }
#     before { post '/readings', params: invalid_attributes, headers: headers }

#     it 'returns status code 422' do
#       expect(response).to have_http_status(422)
#     end

#     it 'returns a validation failure message' do
#       expect(json['message'])
#         .to match('Missing token')
#     end
#   end

  describe 'PUT /readings/:id' do
    let(:valid_attributes) { { title: 'Shopping' }.to_json }

    context 'when the record exists' do
      before { put "/readings/#{reading _id}", params: valid_attributes, headers: headers }
      # [...]
    end
  end

  describe 'DELETE /readings/:id' do
    before { delete "/readings/#{reading_id}", params: {}, headers: headers }
    # [...]
  end
end
