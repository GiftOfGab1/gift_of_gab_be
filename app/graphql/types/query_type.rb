module Types
  class QueryType < Types::BaseObject
    field :sections, [Types::SectionType ], null: false
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def sections
      Section.all
    end

    def user(id:)
      User.find(id)
    end
  end
end
