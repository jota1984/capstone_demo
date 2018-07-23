require 'rails_helper'

RSpec.describe "ApiDevelopments", type: :request do
  describe "RDBMS City resource" do

    before(:each) { City.delete_all } 
    after(:each) { } 

    it "exists" do 
      city = City.create(name: "test") 
      expect(City.find(city.id).name).to eq("test") 
    end
    it "is accessible through /api/cities URI" do
      city = City.create(name: "test") 
      get "/api/cities/#{city.id}" 
      expect(response).to have_http_status(:ok) 
      expect(JSON.parse(response.body)["name"]).to eq("test") 
    end
  end
  describe "MongoDB State resource" do
    before(:each) { State.delete_all } 
    after(:each) { State.delete_all } 

    it "exists" do
      state = State.create(name: "test") 
      expect(State.find(state.id).name).to eq("test") 
    end
    it "is accessible through /api/states URI" do 
      state = State.create(name: "test") 
      get "/api/states/#{state.id}" 
      expect(response).to have_http_status(:ok) 
      expect(JSON.parse(response.body)["name"]).to eq("test") 
    end
  end
end
