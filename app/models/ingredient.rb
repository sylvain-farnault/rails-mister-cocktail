class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, uniqueness: true, presence: true, length: { minimum: 3 }
end
