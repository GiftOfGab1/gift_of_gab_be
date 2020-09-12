require 'rails_helper'

describe 'New Section Phrase Mutation' do
 it 'creates new section phrase ' do

    section_1 = Section.create(title: "Bank", icon: "waving hand")
    phrase_1 = Phrase.create(expression: "Hello", image: "")

    mutation_string =  <<-GRAPHQL
    mutation{
      newSectionPhrase(input: {
        sectionId: 1,
        phraseId: 1
        })
      { sectionPhrase
        { 
          id,
          phraseId,
          sectionId
        }
       }
    }
    GRAPHQL

    post "/v1/graphql", params: { query: mutation_string }

    expect(response.status).to eq(200)
    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response[:data][:newSectionPhrase][:SectionPhrase][:phrase_id]).to_not be_empty
    expect(parsed_response[:data][:newSectionPhrase][:SectionPhrase][:section_id]).to_not be_empty
  end
end