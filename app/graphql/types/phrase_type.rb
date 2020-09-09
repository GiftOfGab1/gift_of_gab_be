module Types
  class PhraseType < Types::BaseObject
    field :id, ID, null: false
    field :expression, String, null: false
    field :image, String, null: false
    field :tags, [String], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
