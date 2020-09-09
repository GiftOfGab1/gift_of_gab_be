module Mutations
  module Users
    class UpdateUser < ::Mutations::BaseMutation
      argument :id, ID, required: true
      argument :speed, Integer, required: false
      argument :voice, String, required: false

      field :updateUser, Types::UserType, null: false
      field :user, Types::UserType, null: false

      def resolve(id:, speed:, voice:)
        user = User.find(id)
        user.update!(speed: speed, voice: voice)
          if user.save
          {
            user: user
          }
        end
      end
    end
  end
end
