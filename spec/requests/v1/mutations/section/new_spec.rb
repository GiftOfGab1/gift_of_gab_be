require 'rails_helper'

describe 'New Section Mutation' do
  it 'can Create a new Section' do

    mutation_string =  <<-GRAPHQL
    mutation{
      newSection(input: {
        title: "Bar",
        icon: "https://cdn.theculturetrip.com/wp-content/uploads/2016/09/main-bar-at-tir-na-nog.jpg"
        })
      { section
        {
          id,
          title,
          icon
          }
        }
      }
      GRAPHQL

      post "/v1/graphql", params: { query: mutation_string }

      expect(response.status).to eq(200)
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:data][:newSection][:section][:id]).to_not be_empty
      expect(parsed_response[:data][:newSection][:section][:title]).to eq("Bar")
      expect(parsed_response[:data][:newSection][:section][:icon]).to eq("https://cdn.theculturetrip.com/wp-content/uploads/2016/09/main-bar-at-tir-na-nog.jpg")
  end
end
