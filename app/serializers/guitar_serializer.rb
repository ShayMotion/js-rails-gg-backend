class GuitarSerializer
  include JSONAPI::Serializer
  attributes :id, :brand, :model, :year, :price
  belongs_to :auction
end