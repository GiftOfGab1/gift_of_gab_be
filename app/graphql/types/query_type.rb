module Types
  class QueryType < Types::BaseObject
    field :sections, [Types::SectionType ], null: false

    def sections
      Section.all
    end
  end
end
