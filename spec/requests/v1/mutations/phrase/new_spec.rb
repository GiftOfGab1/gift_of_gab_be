require 'rails_helper'

describe 'New Phrase Mutation' do
  it 'can Create a new Phrase' do

    section = Section.create(title: "Bank",
                             icon: "https://cdn.theculturetrip.com/wp-content/uploads/2016/09/main-bar-at-tir-na-nog.jpg")

    mutation_string =  <<-GRAPHQL
    mutation{
      newPhrase(input: {
        expression: "Hello",
        image: "https://cdn.theculturetrip.com/wp-content/uploads/2016/09/main-bar-at-tir-na-nog.jpg",
        tags: ["Greeting"],
        section_id: "#{section.id}"
        })
      { phrase
        {
          id,
          expression,
          image,
          tags,
          section_id
          }
        }
      }
      GRAPHQL

      post "/v1/graphql", params: { query: mutation_string }
require "pry"; binding.pry
      expect(response.status).to eq(200)
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:data][:newSection][:section][:id]).to_not be_empty
      expect(parsed_response[:data][:newSection][:section][:title]).to eq("Bar")
      expect(parsed_response[:data][:newSection][:section][:icon]).to eq("https://cdn.theculturetrip.com/wp-content/uploads/2016/09/main-bar-at-tir-na-nog.jpg")
  end
end
