require 'rails_helper'

describe "delete an animal record", :type => :request do

  before do
    delete '/animals/:id', params: { :name => 'ramona', :date_available => '2019-12-31', :animal_type => 'domestic long hair', :sex => 'female', :color => 'brown tabby',  :age => 6,  :weight => 7,  :location => 'Orion', :kennel => 23,  :profile => 'completely lovable',  :picture => 'insert url here' }
  end

  it 'returns the animal name as nil' do
    expect(JSON.parse(response.body)['name']).to eq('nil')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
