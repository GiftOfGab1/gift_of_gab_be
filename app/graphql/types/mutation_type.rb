module Types
  class MutationType < Types::BaseObject
    field :updateUser, mutation: Mutations::Users::UpdateUser
    field :newSection, mutation: Mutations::Sections::NewSection
    field :newPhrase, mutation: Mutations::Phrases::NewPhrase
    field :newSectionPhrase, mutation: Mutations::SectionPhrases::NewSectionPhrase
  end
end
