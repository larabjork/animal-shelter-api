require 'rails_helper'

describe 'return a single animal record', :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  context 'handle exception no animal id provided' do
    before { get '/animals/:id'}
    it 'returns status code 404' do
      expect(response).to have_http_status(:not_found)
    end
  end

  context 'returns record for a specific animal when id provided' do
    before { get "/animals/#{Animal.first.id}"}

    it 'returns a specific animal' do
      expect(JSON.parse(response.body)["id"]).to eq(Animal.first.id)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
