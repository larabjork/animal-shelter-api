require 'rails_helper'

describe "delete an animal record", :type => :request do
let!(:animals) { FactoryBot.create_list(:animal, 1)}

  before do
    delete "/animals/#{Animal.first.id}"
  end

  it 'returns a successful update message' do
    expect(JSON.parse(response.body)['message']).to eq('This animal has been deleted successfully.')
  end

  it 'returns a message that animal has been deleted' do
    expect(response).to have_http_status(:success)
  end
end
