# README

## Gift of Gab API




## Setup
First you'll need these installed:

### Versions
- Rails 5.2.4
_(to find out what version you are using, run `$ rails -v` in the command line)_
- Ruby 2.5.3
_(`$ ruby -v`)_

Next, clone down this repository onto your local machine.
Run these commands in order to get required gems and database established.
- `$ bundle install`
- `$ bundle update`
- `$ rake db:create`
- `$ rake db:migrate`
- `$ rake db:seed`

Once this is all set up and you aren't getting any errors you can run our test suite.

- `$ bundle exec rspec`

### Schema

![Schema](/public/gift_of_gab_schema.png)

### Queries:

  Endpoint: gift-of-gab.herokuapp.com/v1/graphql

  Users by ID:  
    query{
    user(id: #{id}){
          firstName
          lastName
          email
          password
          voice
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

    All Sections:  
      query{
      sections{
        id
        title
        icon
        }
      }

    Phrase by ID:
      query{
        phrase(id: #{id}){
          expression
          image
        }
      }

    Tags by Phrase ID:
      query{
        phrase(id: #{id}){
          expression
          image
          tags
        }
      }

   ### Mutations:

    Update User Info:
      mutation{
        updateUser(input: {
          id: ID
          voice: String
          speed: Integer
          })
        { user
          {
            id,
            voice,
            speed
            }
          }
        }

    Create New Section:
      mutation{
        newSection(input: {
          title: String,
          icon: String
          })
        { section
          {
            id,
            title,
            icon
            }
          }
        }

  Create New Phrase:
    mutation{
      newPhrase(input: {
        expression: String,
        image: String,
        tags: String,
        sectionId: String
        })
      { phrase
        {
          id,
          expression,
          image,
          tags
          }
        }
      }

    Delete Section:
      mutation {
        deleteSection(input: {id:1}) {
          section {
            id
            title
            icon
            }
          }
        }

    Delete Phrase:
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
