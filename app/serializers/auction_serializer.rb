class AuctionSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :start_date, :end_date
  attributes :guitars do |auction|
    auction.guitars
  end
  # has_many :guitars, serializer: GuitarSerializer
end