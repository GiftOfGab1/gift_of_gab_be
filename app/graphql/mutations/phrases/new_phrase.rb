module Mutations
  module Phrases
    class NewPhrase < ::Mutations::BaseMutation
      argument :expression, String, required: true
      argument :image, String, required: true

      field :newPhrase, Types::PhraseType, null: false
      field :phrase, Types::PhraseType, null: false
      
      def resolve(expression:, image:)
        phrase = Phrase.new(expression: expression, image: image)
        if phrase.save
          {
            phrase: phrase
          }
        end
      end
    end
  end
end