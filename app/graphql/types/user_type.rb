module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :firstName, String, null: true
    field :lastName, String, null: true
    field :email, String, null: true
    field :password, String, null: true
    field :speed, Integer, null: true
    field :pitch, Integer, null: true
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
    field :updatedAt, GraphQL::Types::ISO8601DateTime, null: false
    field :sections, [SectionType], null: true
  end
end
