module Types
  class MutationType < Types::BaseObject
    field :updateUser, mutation: Mutations::Users::UpdateUser
    field :newSection, mutation: Mutations::Sections::NewSection
    field :newPhrase, mutation: Mutations::Phrases::NewPhrase
    field :deletePhrase, mutation: Mutations::Phrases::DeletePhrase
    field :deleteSection, mutation: Mutations::Sections::DeleteSection
  end
end
