require 'rails_helper'

describe 'User Query' do
    it "returns all user info by given id" do

        bob = User.create(firstName: "Bob",
                    lastName: "Vance",
                    email: "bob@email.com",
                    password:"123",
                    speed:1,
                    pitch:1,
                   )

    post "/v1/graphql", params: { query: query(id: bob.id)}
    expect(response).to be_successful

    reply = JSON.parse(response.body, symbolize_names: true)
    expect(reply[:data][:user][:firstName]).to_not be_empty
    expect(reply[:data][:user][:lastName]).to_not be_empty
    expect(reply[:data][:user][:email]).to_not be_empty
    expect(reply[:data][:user][:password]).to_not be_empty
    expect(reply[:data][:user][:pitch]).to_not be_nil
    expect(reply[:data][:user][:speed]).to_not be_nil
    end

    def query(id:)
        <<~GQL
        query{
            user(id: #{id}){
                firstName
                lastName
                email
                password
                pitch
                speed
        }
        }
        GQL
        end

  it 'returns section info for a given user' do


    section_1 = Section.create({
      title: 'Greetings',
      icon: 'red'
      })

    section_2 = Section.create({
      title: 'Goodbye',
      icon: 'Green'
      })

    bob = User.create(firstName: "Bob",
                lastName: "Vance",
                email: "bob@email.com",
                password:"123",
                speed:1,
                pitch:1)

    UserSection.create({
      user_id: bob.id,
      section_id: section_1.id
      })

    UserSection.create({
      user_id: bob.id,
      section_id: section_2.id
      })

      def query(id:)
          <<~GQL
          query{
              user(id: #{id}){
                  firstName
                  lastName
                  email
                  password
                  pitch
                  speed
                  sections {
                    title
                    icon
                  }
          }
          }
          GQL
          end

    post "/v1/graphql", params: { query: query(id: bob.id)}
    expect(response).to be_successful

    reply = JSON.parse(response.body, symbolize_names: true)

    expect(reply[:data][:user][:sections]).to_not be_empty
    expect(reply[:data][:user][:sections].first[:title]).to eq('Greetings')
  end
  
  it 'returns section phrases info for a given user' do


    section_1 = Section.create({
      title: 'Greetings',
      icon: 'red'
      })

    section_2 = Section.create({
      title: 'Goodbye',
      icon: 'Green'
      })
      
    phrase_1 = Phrase.create({
      expression: "Hello",
      image: "image1.url"
    })

    phrase_2 = Phrase.create({
      expression: "My name is Bob",
      image: "image2.url"
    })

    bob = User.create(firstName: "Bob",
                lastName: "Vance",
                email: "bob@email.com",
                password:"123",
                speed:1,
                pitch:1)

    UserSection.create({
      user_id: bob.id,
      section_id: section_1.id
      })

    UserSection.create({
      user_id: bob.id,
      section_id: section_2.id
      })
    
    SectionPhrase.create({
      section_id: section_1.id, 
      phrase_id: phrase_1.id
    })

    SectionPhrase.create({
      section_id: section_1.id, 
      phrase_id: phrase_2.id
    })

    SectionPhrase.create({
      section_id: section_2.id, 
      phrase_id: phrase_2.id
    })

      def query(id:)
          <<~GQL
          query{
              user(id: #{id}){
                  firstName
                  lastName
                  email
                  password
                  pitch
                  speed
                  sections {
                    title
                    icon
                    phrases {
                      expression
                      image
                    }
                  }
          }
          }
          GQL
          end

    post "/v1/graphql", params: { query: query(id: bob.id)}
    expect(response).to be_successful

    reply = JSON.parse(response.body, symbolize_names: true)
    expect(reply[:data][:user][:sections].first[:phrases]).to_not be_empty
    expect(reply[:data][:user][:sections].first[:phrases].first[:expression]).to eq('Hello')
    expect(reply[:data][:user][:sections].first[:phrases].last[:expression]).to eq('My name is Bob')
    expect(reply[:data][:user][:sections].last[:phrases].first[:expression]).to eq('My name is Bob')



  end
end
