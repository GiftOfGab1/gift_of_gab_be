require 'rails_helper'

describe 'Delete Phrase Mutation' do
  it 'can delete a phrase' do
    phrase = Phrase.create({
      id: 1,
      expression: "Good Afternoon",
      image: "",
      tags:['Greetings']
      })

      mutation_string =  <<-GRAPHQL
        mutation {
      deletePhrase(input: {id:1}) {
      phrase {
        id
      	expression
        image
        tags
      }
      }
      }
      GRAPHQL

      post "/v1/graphql", params: { query: mutation_string }
      parsed_response = JSON.parse(response.body, symbolize_names: true)
      expect(parsed_response[:data][:deletePhrase][:phrase]).to have_key(:id)
      expect(parsed_response[:data][:deletePhrase][:phrase]).to have_key(:expression)
      expect(parsed_response[:data][:deletePhrase][:phrase]).to have_key(:image)
      expect(parsed_response[:data][:deletePhrase][:phrase]).to have_key(:tags)
      expect(Phrase.all).to eq([])

  end
end
