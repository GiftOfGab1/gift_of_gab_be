module Mutations
  module SectionPhrases
    class NewSectionPhrase < ::Mutations::BaseMutation
      argument :sectionId, String, required: true
      argument :phraseId, String, required: true

      field :newSectionPhrase, Types::SectionPhraseType, null: false
      field :sectionPhrase, Types::SectionPhraseType, null: false
      
      def resolve(sectionId:, phraseId:)
        section_phrase = SectionPhrase.new(sectionId: sectionId, phraseId: phraseId)
        if section_phrase.save
          {
            sectionPhrase: section_phrase
          }
        end
      end
    end
  end
end
