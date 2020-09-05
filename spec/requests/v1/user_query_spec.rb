require 'rails_helper'

describe 'User Query' do 
    it "returns all user info by given id" do

    post "/v1/graphql", params: { query: query(id: 1)}
    expect(response).to be_successful  
    
    reply = JSON.parse(response.body, symbolize_names: true)
    binding.pry
    expect(reply[:data][:user][:firstName]).to_not be_empty
    expect(reply[:data][:user][:lastName]).to_not be_empty
    expect(reply[:data][:user][:email]).to_not be_empty
    expect(reply[:data][:user][:password]).to_not be_empty
    expect(reply[:data][:user][:pitch]).to_not be_empty
    expect(reply[:data][:user][:speed]).to_not be_empty
    end 

    def query(id:)
        <<~GQL
        query{
            user(id){
                firstName
                lastName
                email
                password
                pitch
                speed
        }
        }
        GQL
        end 
end 
