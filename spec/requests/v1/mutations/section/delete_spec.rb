require 'rails_helper'

describe "Delete Section Mutation" do
  it 'can delete a section' do
    section = Section.create({
      id: 1,
      title: 'greetings',
      icon: 'red'
      })
    mutation_string =  <<-GRAPHQL
      mutation {
    deleteSection(input: {id:1}) {
    section {
      id
    	title
      icon
    }
    }
    }
    GRAPHQL
    post "/v1/graphql", params: { query: mutation_string }
    expect(response.status).to eq(200)
    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response[:data][:deleteSection][:section]).to have_key(:id)
    expect(parsed_response[:data][:deleteSection][:section]).to have_key(:title)
    expect(parsed_response[:data][:deleteSection][:section]).to have_key(:icon)
    expect(Section.all).to eq([])

  end
end
