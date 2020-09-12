module Types
  class SectionPhraseType < Types::BaseObject
    field :id, ID, null: false
    field :phrase_id, ID, null: false
    field :section_id, ID, null: false
    binding.pry
  end
end
