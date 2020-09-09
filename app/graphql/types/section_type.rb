module Types
  class SectionType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :icon, String, null: false
    field :users, [UserType], null: true
    field :phrases, [PhraseType], null: true

  end
end
