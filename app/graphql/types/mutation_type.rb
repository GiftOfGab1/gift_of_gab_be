module Types
  class MutationType < Types::BaseObject
    field :updateUser, mutation: Mutations::Users::UpdateUser
    field :newSection, mutation: Mutations::Sections::NewSection
  end
end
