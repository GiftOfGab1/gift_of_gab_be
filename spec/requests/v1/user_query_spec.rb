require 'rails_helper'

describe 'User Query' do 
    it "returns all user info by given id" do

    bob = User.create(firstName: "Bob",
                lastName: "Vance",
                email: "bob@email.com",
                password:"123",
                speed:1,
                pitch:1,
                createdAt:"2020-09-04 18:06:58",
                updatedAt:"2020-09-04 18:06:58")

    post "/v1/graphql", params: { query: query(id: bob.id)}
    expect(response).to be_successful  
    
    reply = JSON.parse(response.body, symbolize_names: true)
    expect(reply[:data][:user][:firstName]).to_not be_empty
    expect(reply[:data][:user][:lastName]).to_not be_empty
    expect(reply[:data][:user][:email]).to_not be_empty
    expect(reply[:data][:user][:password]).to_not be_empty
    expect(reply[:data][:user][:pitch]).to_not be_nil
    expect(reply[:data][:user][:speed]).to_not be_nil
    end 

    def query(id:)
        <<~GQL
        query{
            user(id: #{id}){
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
