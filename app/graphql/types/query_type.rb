module Types
  class QueryType < Types::BaseObject
    field :user, Types::UserType, null: false do 
      argument :id, required: true

    def user(id)
      User.find(id)
    end 
  #   # Add root-level fields here.
  #   # They will be entry points for queries on your schema.

  #   # TODO: remove me
  #   field :test_field, String, null: false,
  #     description: "An example field added by the generator"
  #   def test_field
  #     "Hello World!"
  #   end
  # end
end
