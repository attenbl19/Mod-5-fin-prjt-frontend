class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :summary, :number, :website, :image
  has_many :pet_types
  has_many :pets
end
