# README

## Gift of Gab API


* Ruby version: 5.2.3
* Rails version: 5.2.4

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
