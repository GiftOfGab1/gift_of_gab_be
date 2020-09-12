module Mutations
  module SectionPhrases
    class NewSectionPhrase < ::Mutations::BaseMutation
      argument :section_id, String, required: true
      argument :phrase_id, String, required: true

      field :newSectionPhrase, Types::SectionPhraseType, null: false
      field :sectionPhrase, Types::SectionPhraseType, null: false
      
      def resolve(section_id:, phrase_id:)
        section_phrase = SectionPhrase.new(section_id: section_id, phrase_id: phrase_id)
        if section_phrase.save
          {
            sectionPhrase: section_phrase
          }
        end
      end
    end
  end
end
