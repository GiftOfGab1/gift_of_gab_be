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
 xit 'creates section phrase when creating new phrase' do

    mutation_string =  <<-GRAPHQL
    mutation{
      newPhrase(input: {
        expression: "How about that weather?" ,
        image: "fake.url"
        })
      newSectionPhrase(input: {
        phrase_id: 3 ,
        section_id: 1
        })
      { phrase
        {
          id,
          expression,
          image
        }
      }
      { section_phrase
        { 
          id,
          phrase_id: phrase.id,
          section_id: section_id
        }
      }
    }
    GRAPHQL

      post "/v1/graphql", params: { query: mutation_string }

      expect(response.status).to eq(200)
      parsed_response = JSON.parse(response.body, symbolize_names: true)
      binding.pry
      expect(parsed_response[:data][:newPhrase][:phrase][:id]).to_not be_empty
      expect(parsed_response[:data][:newPhrase][:phrase][:expression]).to_not be_empty
      expect(parsed_response[:data][:newPhrase][:phrase][:image]).to_not be_empty
      expect(parsed_response[:data][:newSectionPhrase][:phrase_id]).to_not be_empty
      expect(parsed_response[:data][:newSectionPhrase][:section_id]).to_not be_empty
  end
end