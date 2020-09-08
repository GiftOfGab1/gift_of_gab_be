module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :firstName, String, null: true
    field :lastName, String, null: true
    field :email, String, null: true
    field :password, String, null: true
    field :speed, Integer, null: true
    field :pitch, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
