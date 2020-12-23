class Auction < ApplicationRecord
    has_many :guitars, dependent: :destroy    
end