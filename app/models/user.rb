class User < ApplicationRecord
  has_many :user_sections
  has_many :sections, through: :user_sections
end
