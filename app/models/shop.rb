class Shop < ApplicationRecord
    has_many :pet_types
    has_many :pets
end
