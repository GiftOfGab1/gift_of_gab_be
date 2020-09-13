module Mutations
  module Phrases
    class NewPhrase < ::Mutations::BaseMutation
      argument :expression, String, required: true
      argument :image, String, required: true
      argument :tags, String, required: false
      argument :section_id, String, required: true

      field :newPhrase, Types::PhraseType, null: false
      field :phrase, Types::PhraseType, null: false

      def resolve(expression:, image:, tags:, section_id:)
        phrase = Phrase.new(expression: expression, image: image, tags: [tags])
        if phrase.save
          section_phrase = SectionPhrase.new(section_id: section_id, phrase_id: phrase.id)
          {
            phrase: phrase
          }
        end
      end
    end
  end
end
