module Types
  class QueryType < Types::BaseObject
    field :sections, [Types::SectionType], null: false

    def sections
      Section.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :phrase, Types::PhraseType, null:false do
      argument :id, ID, required: true
    end

    def phrase(id:)
      Phrase.find(id)
    end

  end
end
