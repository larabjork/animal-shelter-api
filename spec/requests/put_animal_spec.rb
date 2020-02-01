require 'rails_helper'

describe "update an animal record", :type => :request do
let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before do
    put '/animals/46', params: { :name => 'ramona', :date_available => '2019-12-28', :animal_type => 'domestic medium hair', :sex => 'female', :color => 'brown tabby',  :age => 6,  :weight => 8,  :location => 'Orion', :kennel => 23,  :profile => 'completely lovable',  :picture => 'url goes here' }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('ramona')
  end

  it 'returns the date available' do
    expect(JSON.parse(response.body)['date_available']).to eq('2019-12-28')
  end

  it 'returns the animal weight' do
    expect(JSON.parse(response.body)['weight']).to eq(8)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end



# do
#   post '/animals', params: { :name => 'ramona', :date_available => '2019-12-31', :animal_type => 'domestic long hair', :sex => 'female', :color => 'brown tabby',  :age => 6,  :weight => 7,  :location => 'Orion', :kennel => 23,  :profile => 'completely lovable',  :picture => 'insert url here' }
#   binding.pry
