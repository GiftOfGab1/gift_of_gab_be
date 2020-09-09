module Types
  class MutationType < Types::BaseObject
    field :updateUser, mutation: Mutations::Users::UpdateUser

  end
end
