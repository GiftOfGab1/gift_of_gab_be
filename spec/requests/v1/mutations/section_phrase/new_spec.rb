require 'rails_helper'

describe 'New Section Phrase Mutation' do
 it 'creates new section phrase ' do

    mutation_string =  <<-GRAPHQL
    mutation{
      newSectionPhrase(input: {
        phraseId: 1 ,
        sectionId: 1
        })
      { section_phrase
        { 
          id,
          phraseId: phraseId,
          sectionId: sectionId
        }
      }
    }
    GRAPHQL

      post "/v1/graphql", params: { query: mutation_string }

      expect(response.status).to eq(200)
      parsed_response = JSON.parse(response.body, symbolize_names: true)
      binding.pry
      expect(parsed_response[:data][:newSectionPhrase][:SectionPhrase][:phrase_id]).to_not be_empty
      expect(parsed_response[:data][:newSectionPhrase][:SectionPhrase][:section_id]).to_not be_empty
  end
end