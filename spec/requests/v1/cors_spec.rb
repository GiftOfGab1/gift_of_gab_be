require 'rails_helper'

describe "the requests support CORS headers" do
  it 'Returns the response CORS headers' do

    hello = Phrase.create(expression: "Hello",
                    image: "blahblahblah.url",
                    )

    post '/v1/graphql', params: { query: query(id: hello.id)}, headers: {'ORIGIN' => '*'}
    
    expect(response.headers['Access-Control-Allow-Origin']).to eq('*')
  end

    
    def query(id:)
        <<~GQL
        query{
            phrase(id: #{id}){
                expression
                image
        }}
        GQL
    end 

  
end