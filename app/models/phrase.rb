class Phrase < ApplicationRecord
  has_many :section_phrases
  has_many :sections, through: :section_phrases
end
