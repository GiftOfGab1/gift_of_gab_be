module Types
  class SectionPhraseType < Types::BaseObject
    field :id, ID, null: false
    field :phraseId, ID, null: false
    field :sectionId, ID, null: false
  end
end
