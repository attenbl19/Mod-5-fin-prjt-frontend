class PetTypeSerializer < ActiveModel::Serializer
  attributes :id, :bird, :cat, :dog, :small_animal
end
