class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :icon, :summary, :number, :website, :image
  has_many :pet_types
end
