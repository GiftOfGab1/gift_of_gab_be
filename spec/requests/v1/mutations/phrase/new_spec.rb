require 'rails_helper'

describe 'New Phrase Mutation' do
  it 'can create a new Section' do

    mutation_string =  <<-GRAPHQL
    mutation{
      newPhrase(input: {
        expression: "How about that weather?" ,
        image: "fake.url"
        })
      { phrase
        {
          id,
          expression,
          image
          }
        }
      }
      GRAPHQL

      post "/v1/graphql", params: { query: mutation_string }

      expect(response.status).to eq(200)
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:data][:newPhrase][:phrase][:id]).to_not be_empty
      expect(parsed_response[:data][:newPhrase][:phrase][:expression]).to_not be_empty
      expect(parsed_response[:data][:newPhrase][:phrase][:image]).to_not be_empty
  end
 xit 'creates section phrase when creating section' do

    mutation_string =  <<-GRAPHQL
    mutation{
      newPhrase(input: {
        expression: "How about that weather?" ,
        image: "fake.url"
        })
      { phrase
        {
          id,
          expression,
          image
          }
        }
      }
      GRAPHQL

      post "/v1/graphql", params: { query: mutation_string }

      expect(response.status).to eq(200)
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:data][:newPhrase][:phrase][:id]).to_not be_empty
      expect(parsed_response[:data][:newPhrase][:phrase][:expression]).to_not be_empty
      expect(parsed_response[:data][:newPhrase][:phrase][:image]).to_not be_empty
  end
end