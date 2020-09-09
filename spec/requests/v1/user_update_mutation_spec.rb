require 'rails_helper'

describe 'Update User Mutation' do
  it 'can update a user' do

    bob = User.create(firstName: "Bob",
      lastName: "Vance",
      email: "bob@email.com",
      password:"123",
      speed:1,
      voice: "Matt",
    )

    mutation_string =  <<-GRAPHQL
    mutation{
      updateUser(input: {
        id: "#{bob.id}"
        voice: "Rebecca"
        speed: 0
        })
      { user
        {
          id,
          voice,
          speed
          }
        }
      }
      GRAPHQL

      post "/v1/graphql", params: { query: mutation_string }

      expect(response.status).to eq(200)
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:data][:updateUser][:user][:id]).to eq(bob.id.to_s)
      expect(parsed_response[:data][:updateUser][:user][:voice]).to eq("Rebecca")
      expect(parsed_response[:data][:updateUser][:user][:speed]).to eq(0)
  end
end
