module Mutations
  module Sections
    class NewSection < ::Mutations::BaseMutation
      argument :title, String, required: true
      argument :icon, String, required: true

      field :newSection, Types::SectionType, null: false
      field :section, Types::SectionType, null: false

      def resolve(title:, icon:)
        section = Section.new(title: title, icon: icon)
        if section.save
          {
            section: section
          }
        end
      end
    end
  end
end
