class CharacterClass < ApplicationRecord
  validates_presence_of :title
  has_many :characters
end
