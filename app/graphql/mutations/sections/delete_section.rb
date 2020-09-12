module Mutations
  module Sections
    class DeleteSection < ::Mutations::BaseMutation
      field :section, Types::SectionType, null:false

      argument :id, ID, required: true

      def resolve(id:)
        section = Section.find(id)
          section.destroy!
          { section: section }

        end
      end
    end
  end
