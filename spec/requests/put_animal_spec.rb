require 'rails_helper'

describe "update an animal record", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 1)}

  context "update an animal record" do
    before do
      put "/animals/#{Animal.first.id}", params: { :name => 'ramona', :date_available => '2019-12-28', :animal_type => 'domestic medium hair', :sex => 'female', :color => 'brown tabby',  :age => 6,  :weight => 8,  :location => 'Orion', :kennel => 23,  :profile => 'completely lovable',  :picture => 'url goes here' }
    end

    it 'returns a successful update message' do
      expect(JSON.parse(response.body)['message']).to eq('This animal has been updated successfully.')
    end

    it 'returns a created status' do
      expect(response).to have_http_status(:success)
    end
  end

  context 'handle exception when no animal id provided' do
    before { put '/animals/:potato'}
    it 'returns status code 404' do
      expect(response).to have_http_status(:not_found)
    end
  end

end
