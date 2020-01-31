require 'rails_helper'

describe "post an animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'ramona', :date_available => '2019-12-31', :animal_type => 'domestic long hair', :sex => 'female', :color => 'brown tabby',  :age => 6,  :weight => 7,  :location => 'Orion', :kennel => 23,  :profile => 'completely lovable',  :picture => 'insert url here' }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('ramona')
  end

  it 'returns the date available' do
    expect(JSON.parse(response.body)['date_available']).to eq('2019-12-31')
  end

  it 'returns the animal weight' do
    expect(JSON.parse(response.body)['weight']).to eq(7)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
