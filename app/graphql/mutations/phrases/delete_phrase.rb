module Mutations
  module Phrases
    class DeletePhrase < ::Mutations::BaseMutation
      field :phrase, Types::PhraseType, null: false

      argument :id, ID, required: true

      def resolve(id:)
        phrase = Phrase.find(id)
          phrase.destroy!
          { phrase: phrase }

        end
      end
    end
  end
