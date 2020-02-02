require 'rails_helper'

describe "post an animal route", :type => :request do

  context "posts an animal record with all fields provided" do
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

  context "returns exception when one or more required fields not provided" do
    let(:name) {'ramona'}
    let(:date_available) {'2019-12-31'}
    let(:animal_type) {'domestic long hair'}
    let(:sex) {'female'}
    let(:color) {'brown tabby'}
    let(:age) {6}
    let(:weight) {7}
    let(:location) {'Orion'}
    let(:kennel) {23}
    let(:profile) {'completely lovable'}
    let(:picture) {'insert url here'}

    before do
      post '/animals', params: { :name => name, :date_available => date_available, :animal_type => animal_type, :sex => sex, :color => color,  :age => age,  :weight => weight,  :location => location, :kennel => kennel,  :profile => profile,  :picture => picture }
    end

    context "missing name param" do
      let(:name) {nil}
      it 'returns message that name field is required' do
        expect(JSON.parse(response.body)['message']).to eq("You are missing a required field.")
      end
    end

  end
end
