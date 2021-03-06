class BeerCharacteristic < ApplicationRecord
    has_many :restrictions, as: :beer_restriction
    has_and_belongs_to_many :beers
    validates :name, presence: { message: "O nome da característica deve ser preenchido." }
    validates :name, uniqueness: { message: "Característica informada já existe." }
end
