require 'rails_helper'

describe 'Section Query' do
  it 'returns all sections' do

  query_string =  <<-GRAPHQL
    query{
        sections{
            id
            title
            icon
    }
    }
    GRAPHQL

    section = Section.create({
      title: 'greetings',
      icon: 'red'
      })

      post "/v1/graphql", params: { query: query_string}

      expect(response).to be_successful
      parsed_response = JSON.parse(response.body, symbolize_names: true)

      expect(parsed_response[:data][:sections].first[:title]).to eq('greetings')
      expect(parsed_response[:data][:sections].first[:icon]).to eq('red')
  end
end
