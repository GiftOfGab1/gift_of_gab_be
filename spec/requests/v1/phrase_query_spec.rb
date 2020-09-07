require 'rails_helper'

describe 'Phrase Query' do 
    it "returns all phrase info by given id" do

        hello = Phrase.create(expression: "Hello",
                    image: "blahblahblah.url",
                    )

        post "/v1/graphql", params: { query: query(id: hello.id)}
        expect(response).to be_successful  

        reply = JSON.parse(response.body, symbolize_names: true)
        expect(reply[:data][:phrase][:expression]).to_not be_empty
        expect(reply[:data][:phrase][:image]).to_not be_empty
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