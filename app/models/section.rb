class Section < ApplicationRecord
  has_many :user_sections
  has_many :users, through: :user_sections
  has_many :section_phrases
  has_many :phrases, through: :section_phrases
end
